package aut.isp.lab4.exercise5;

public class AquariumController {
    private FishFeeder feeder;
    private String manufacturer;
    private String model;
    private float currentTime;
    private float feedingTime;
    private int temperature;

    public AquariumController(FishFeeder feeder, String manufacturer, String model, float currentTime, float feedingTime, int temperature) {
        this.feeder = feeder;
        this.manufacturer = manufacturer;
        this.model = model;
        this.currentTime = currentTime;
        this.feedingTime = feedingTime;
        this.temperature = temperature;
    }

    public void setTemperature(int temperature) {
        this.temperature = temperature;
    }

    public int getTemperature() {
        return temperature;
    }

    public void setCurrentTime(float currentTime) {
        this.currentTime = currentTime;
        if (this.currentTime == this.feedingTime)
            feeder.showFeed();
    }

    public void setFeedingTime(float feedingTime) {
        this.feedingTime = feedingTime;
    }

    public void checkTemperature() {
        Heater heater = new Heater("ABC", "Mini");
        if (this.temperature < 24 || this.temperature > 27) {
            heater.turnOn();
            this.temperature = 25;
        } else heater.turnOff();
    }

    public void checkWaterLevel() {
        LevelSensor levelSensor = new LevelSensor("AMN", "Mini", 50.5F);
        Alarm alarm = new Alarm("ABC", "Mini");
        if (levelSensor.getValue() != 100F) {
            alarm.turnOn();
            levelSensor.setValue(100F);
        }
    }

    @Override
    public String toString() {
        return "Feeder: " + this.feeder.toString() + "\nThe manufacturer " + this.manufacturer + " checks the model " + this.model + ". Current time " + this.currentTime + " and feeding time " + this.feedingTime + ". Temperature of water: " + this.temperature;
    }
}

