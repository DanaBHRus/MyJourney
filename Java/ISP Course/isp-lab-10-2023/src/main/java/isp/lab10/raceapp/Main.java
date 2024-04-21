package isp.lab10.raceapp;

import javax.swing.*;

public class Main {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Semaphore");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        SemaphorePanel semaphorePanel = new SemaphorePanel();

        frame.getContentPane().add(semaphorePanel);
        frame.pack();
        frame.setVisible(true);

        SemaphoreThread semaphoreThread = new SemaphoreThread(semaphorePanel);
        semaphoreThread.start();
        try {
            semaphoreThread.join();
        } catch (Exception e) {
        }
        System.out.println("Race!");
        JFrame frame2 = new JFrame("Car Race");
        frame2.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        CarPanel carPanel = new CarPanel();

        frame2.getContentPane().add(carPanel);
        frame2.pack();
        frame2.setSize(500, 300);
        frame2.setVisible(true);

        Car car1 = new Car("Red car", carPanel);
        Car car2 = new Car("Blue car", carPanel);
        Car car3 = new Car("Green car", carPanel);
        Car car4 = new Car("Yellow car", carPanel);

        PlaySound playSound = new PlaySound();
        playSound.playSound();
        MyTimer myTimer = new MyTimer();

        car1.start();
        car2.start();
        car3.start();
        car4.start();
        myTimer.start();

        try{
            car1.join();
            car2.join();
            car3.join();
            car4.join();
        }
        catch (Exception e){
        }

        playSound.stopSound();
        myTimer.stop();
        System.out.println("Timer Value:" + myTimer.getValue());
    }
}
