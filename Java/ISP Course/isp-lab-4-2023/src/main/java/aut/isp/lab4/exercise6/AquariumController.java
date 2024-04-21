package aut.isp.lab4.exercise6;

public class AquariumController {
    private FishFeeder feeder;
    private String manufacturer;
    private String model;
    private float currentTime;
    private float feedingTime;
    private int presentTemperature;
    private float presentLevel;
    private float presentPH;

    public AquariumController(FishFeeder feeder, String manufacturer, String model, float currentTime, float feedingTime, int presentTemperature, float presentLevel, float presentPH) {
        this.feeder = feeder;
        this.manufacturer = manufacturer;
        this.model = model;
        this.currentTime = currentTime;
        this.feedingTime = feedingTime;
        this.presentTemperature = presentTemperature;
        this.presentLevel = presentLevel;
        this.presentPH = presentPH;
    }

    public void setPresentTemperature(int presentTemperature) {
        this.presentTemperature = presentTemperature;
    }

    public int getPresentTemperature() {
        return presentTemperature;
    }

    public void setPresentLevel(float presentLevel) {
        this.presentLevel = presentLevel;
    }

    public float getPresentLevel() {
        return presentLevel;
    }

    public void setPresentPH(float presentPH) {
        this.presentPH = presentPH;
    }

    public float getPresentPH() {
        return presentPH;
    }

    public void setCurrentTime(float currentTime) {
        this.currentTime = currentTime;
        if (this.currentTime == this.feedingTime) feeder.showFeed();
    }

    public void setFeedingTime(float feedingTime) {
        this.feedingTime = feedingTime;
    }

    public void checkTemperature() {
        Heater heater = new Heater("ABC", "Mini");
        if (this.presentTemperature < 24 || this.presentTemperature > 27) {
            heater.turnOn();
            this.presentTemperature = 25;
        } else heater.turnOff();
    }

    public void checkWaterLevel() {
        Alarm alarm = new Alarm("ABC", "Mini");
        if (this.presentLevel != 100F) {
            alarm.turnOn();
            this.presentLevel = 100F;
        }
    }

    public void checkPH() {
        if (this.presentPH >= 6.5F && this.presentPH <= 7.5F) {
            if (this.presentPH != 7F) this.presentPH = 7F;
        } else {
            Alarm alarm = new Alarm("ABC", "Mini");
            alarm.turnOn();
        }
    }

    @Override
    public String toString() {
        return "Feeder: " + this.feeder.toString() + "\nThe manufacturer " + this.manufacturer + " checks the model " + this.model + ". Current time " + this.currentTime + " and feeding time " + this.feedingTime + ".\nTemperature of water: " + this.presentTemperature + " Level of water: " + this.presentLevel + " PH: " + presentPH;
    }
}
