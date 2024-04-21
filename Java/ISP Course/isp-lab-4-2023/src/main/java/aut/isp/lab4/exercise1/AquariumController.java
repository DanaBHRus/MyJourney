package aut.isp.lab4.exercise1;

public class AquariumController {
    private String manufacturer;
    private String model;
    private float currentTime;

    public AquariumController(String manufacturer, String model, float currentTime) {
        this.manufacturer = manufacturer;
        this.model = model;
        this.currentTime = currentTime;
    }

    public void setCurrentTime(float currentTime) {
        this.currentTime = currentTime;
    }

    @Override
    public String toString() {
        return "The manufacturer " + this.manufacturer + " checks the model " + this.model + " at " + this.currentTime;
    }
}
