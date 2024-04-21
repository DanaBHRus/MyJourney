package isp.lab4.exercise2;

public class Laptop implements Chargeable {
    private int batteryLevel;

    public void setBatteryLevel(int batteryLevel) {
        this.batteryLevel = batteryLevel;
    }

    @Override
    public void charge(int duration) {
        double level = this.batteryLevel + duration * 0.5;
        if (level >= 100) level = 100;
        System.out.println((int) level + "% charged");
        this.batteryLevel = (int)level;
    }

    @Override
    public int getBatteryLevel() {
        return this.batteryLevel;
    }

    @Override
    public String toString() {
        return "Laptop: batteryLevel = " + this.batteryLevel;
    }
}
