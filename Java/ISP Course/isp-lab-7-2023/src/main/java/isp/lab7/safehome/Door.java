package isp.lab7.safehome;

import java.util.Objects;

public class Door {
    private DoorStatus status;

    public Door(DoorStatus status) {
        this.status = status;
    }

    public DoorStatus getStatus() {
        return status;
    }

    public void lockDoor() {
        status = DoorStatus.LOCKED;
    }


    public void swapDoor() {
        if (status == DoorStatus.OPEN)
            status = DoorStatus.CLOSE;
        else status = DoorStatus.OPEN;
    }

    public void unlockDoor() {
        status = DoorStatus.OPEN;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Door door = (Door) o;
        return status == door.status;
    }

    @Override
    public int hashCode() {
        return Objects.hash(status);
    }

    @Override
    public String toString() {
        return "Door{" +
                "status=" + status +
                '}';
    }
}
