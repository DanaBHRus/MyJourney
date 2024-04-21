package aut.isp.lab4.exercise6;

public abstract class Sensor {
    private String manufacturer;
    private String model;

    public Sensor(String manufacturer, String model) {
        this.model = model;
        this.manufacturer = manufacturer;
    }

    @Override
    public String toString() {
        return "Sensor - manufacturer: " + this.manufacturer + ", model: " + this.model;
    }
}
