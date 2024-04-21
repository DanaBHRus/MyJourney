package isp.lab10.exercise1;

import java.util.HashMap;
import java.util.Map;

public class ATC {

    private final Map<String, Aircraft > aircrafts = new HashMap<>();
    public void addAircraft(String id) {
        Aircraft aircraft = new Aircraft(id);
        aircrafts.put(id,aircraft);
        Thread aircraftTh = new Thread(aircraft);
        aircraftTh.start();
        aircraftTh.stop();
    }

    public void sendCommand(String aircraftId, AtcCommand cmd) {
        Aircraft aircraft = aircrafts.get(aircraftId);
        if(aircraft != null){
            aircraft.receiveAtcCommand(cmd);
        }
        else System.out.println("Doesn't exist that aircraft!");
    }

    public void showAircrafts() {
        for (String id : aircrafts.keySet())
            System.out.println("Aircraft ID: " + id);
    }
}
