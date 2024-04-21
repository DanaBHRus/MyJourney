package isp.lab10.raceapp;

import java.time.Duration;
import java.time.Instant;

class Car extends Thread {
    private String name;
    private int distance = 0;
    private CarPanel carPanel;

    public Car(String name, CarPanel carPanel) {
        //set thread name;
        setName(name);
        this.name = name;
        this.carPanel = carPanel;
    }

    public void run() {
        Instant startTime = Instant.now();
        while (distance < 400) {
            // simulate the car moving at a random speed
            int speed = (int) (Math.random() * 10) + 1;
            distance += speed;

            carPanel.updateCarPosition(name, distance);

            try {
                // pause for a moment to simulate the passage of time
                Thread.sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        Instant endTime = Instant.now();
        Duration timeBetween = Duration.between(startTime,endTime);
        carPanel.carFinished(name,timeBetween);
    }
}
