package isp.lab10.raceapp;

public class MyTimer extends Thread {
    private long value = 0;

    public MyTimer() {
        setName("Timer");
    }

    public long getValue() {
        return value;
    }

    public void run() {
        while (true) {
            value++;
            try {
                Thread.sleep(10);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
