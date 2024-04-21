package isp.lab10.exercise1;

public class Aircraft implements Runnable {

    private String id;
    private int altitude = 0;
    private AircraftState state;
    private MyTimer myTimer = new MyTimer();

    public Aircraft(String id) {
        this.id = id;
        this.state = AircraftState.ON_STAND;
    }

    public void receiveAtcCommand(AtcCommand cmd) {
        if (cmd instanceof TakeoffCommand) {
            TakeoffCommand takeoffCmd = (TakeoffCommand) cmd;
            takeoff(takeoffCmd.getAltitude());
        } else if (cmd instanceof LandCommand)
            land();
    }

    private void takeoff(int altitude) {
        if (state == AircraftState.ON_STAND) {
            state = AircraftState.TAXING;
            System.out.println(id + " is taxing.");
            try {
                Thread.sleep(10000); // 10 seconds for taxing
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            state = AircraftState.TAKING_OFF;
            System.out.println(id + " is taking off.");
            try {
                Thread.sleep(5000); // 5 seconds for taking off
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            state = AircraftState.ASCENDING;
            while (this.altitude < altitude) {
                try {
                    Thread.sleep(10000); // 10 seconds for each 1000 meters increment
                    this.altitude += 1000;
                    System.out.println(id + " is ascending. Altitude: " + this.altitude + " meters.");
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            state = AircraftState.CRUISING;
            myTimer.start();
            System.out.println(id + " is cruising at altitude: " + altitude + " meters.");
        }
    }

    private void land() {
        if (state == AircraftState.CRUISING) {
            myTimer.stop();
            state = AircraftState.DESCENDING;
            while (altitude > 0) {
                try {
                    Thread.sleep(10000); // 10 seconds for each 1000 meters decrement
                    altitude -= 1000;
                    System.out.println(id + " is descending. Altitude: " + altitude + " meters.");
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            state = AircraftState.LANDED;
            System.out.println(id + " has landed.");
            System.out.println(id + " spent " + myTimer.getValue() + " miliseconds cruising.");
        }
    }

    @Override
    public void run() {
        while (state != AircraftState.LANDED) {
        }
    }
}
