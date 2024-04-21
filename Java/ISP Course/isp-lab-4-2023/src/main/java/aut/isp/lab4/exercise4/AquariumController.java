package aut.isp.lab4.exercise4;

public class AquariumController {
    private FishFeeder feeder;
    private String manufacturer;
    private String model;
    private float currentTime;
    private float feedingTime;
    private LightsControl lightsControl;

    public AquariumController(FishFeeder feeder, String manufacturer, String model, float currentTime, float feedingTime, LightsControl lightsControl) {
        this.feeder = feeder;
        this.manufacturer = manufacturer;
        this.model = model;
        this.currentTime = currentTime;
        this.feedingTime = feedingTime;
        this.lightsControl = lightsControl;
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
        return "Feeder: " + this.feeder.toString() + "\nThe manufacturer " + this.manufacturer + " checks the model " + this.model + ". Current time " + this.currentTime + " and feeding time " + this.feedingTime + "\n" + lightsControl.toString();
    }
}
