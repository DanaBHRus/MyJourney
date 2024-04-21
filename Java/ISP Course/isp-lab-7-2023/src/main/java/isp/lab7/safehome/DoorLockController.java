package isp.lab7.safehome;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


public class DoorLockController implements ControllerInterface {
    private final HashMap<Tenant, AccessKey> validAccess = new HashMap<>();
    final Door door = new Door(DoorStatus.CLOSE);
    private final ArrayList<AccessLog> accessLog = new ArrayList<>();
    private int failedAttempts = 0;

    private String getNameByPIN(String pin) {
        for (Map.Entry<Tenant, AccessKey> tenant : validAccess.entrySet()) {
            if (tenant.getValue().toString().equals(pin))
                return tenant.getKey().toString();
        }
        return "Unknown";
    }

    private void materUnlock() {
        door.unlockDoor();
        failedAttempts = 0;
        accessLog.add(new AccessLog(ControllerInterface.MASTER_TENANT_NAME, LocalDateTime.now(), "masterUnlock", door.getStatus(), "Door unlocked"));
    }

    private void successfulAttempt(String pin) {
        door.swapDoor();
        failedAttempts = 0;
        accessLog.add(new AccessLog(getNameByPIN(pin), LocalDateTime.now(), "enterPIN", door.getStatus(), "Correct PIN"));
    }

    private void failedAttempt(String pin) throws InvalidPinException, TooManyAttemptsException {
        failedAttempts++;
        if (failedAttempts >= 3)
            tooManyAttempts(pin);
        accessLog.add(new AccessLog(getNameByPIN(pin), LocalDateTime.now(), "enterPIN", door.getStatus(), "Wrong PIN"));
        throw new InvalidPinException("Invalid pin");
    }

    private void tooManyAttempts(String pin) throws TooManyAttemptsException {
        door.lockDoor();
        accessLog.add(new AccessLog(getNameByPIN(pin), LocalDateTime.now(), "enterPIN", door.getStatus(), "Door permanently locked"));
        throw new TooManyAttemptsException("Too many Attempts");
    }

    @Override
    public DoorStatus enterPin(String pin) throws Exception {
        int maxAttempts = 3;
        if (pin.equals(ControllerInterface.MASTER_KEY))
            materUnlock();
        else if (failedAttempts < maxAttempts) {
            if (validAccess.containsValue(new AccessKey(pin)))
                successfulAttempt(pin);
            else failedAttempt(pin);
        } else tooManyAttempts(pin);
        return door.getStatus();
    }

    @Override
    public void addTenant(String pin, String name) throws Exception {
        if (validAccess.containsKey(new Tenant(name)))
            throw new TenantAlreadyExistsException("Name already used");
        validAccess.put(new Tenant(name), new AccessKey(pin));
    }

    @Override
    public void removeTenant(String name) throws Exception {
        if (validAccess.containsKey(new Tenant(name)))
            validAccess.remove(new Tenant(name));
        else throw new TenantNotFoundException("Name not found");
    }

    public void getAccessLog() {
        System.out.println(accessLog.size());
        for (AccessLog log : accessLog) System.out.println(log);
    }
}