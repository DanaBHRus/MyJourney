package aut.isp.lab4.exercise3;

public class AquariumController {
    private FishFeeder feeder;
    private String manufacturer;
    private String model;
    private float currentTime;
    private float feedingTime;

    public AquariumController(FishFeeder feeder, String manufacturer, String model, float currentTime, float feedingTime) {
        this.feeder = feeder;
        this.manufacturer = manufacturer;
        this.model = model;
        this.currentTime = currentTime;
        this.feedingTime = feedingTime;
    }

    public void setCurrentTime(float currentTime) {
        this.currentTime = currentTime;
        if (this.currentTime == this.feedingTime)
            feeder.showFeed();
    }

    public void setFeedingTime(float feedingTime) {
        this.feedingTime = feedingTime;
    }

    @Override
    public String toString() {
        return "Feeder: " + this.feeder.toString() + "\nThe manufacturer " + this.manufacturer + " checks the model " + this.model + ". Current time " + this.currentTime + " and feeding time " + this.feedingTime;
    }
}
