package aut.isp.lab4.exercise5;

public abstract class Actuator {
    private String manufacturer;
    private String model;

    public Actuator(String manufacturer, String model) {
        this.model = model;
        this.manufacturer = manufacturer;
    }

    public void turnOn() {
        System.out.println("Actuator on");
    }

    public void turnOff() {
        System.out.println("Actuator off");
    }

    @Override
    public String toString() {
        return "Actuator - manufacturer: " + this.manufacturer + ", model: " + this.model;
    }
}
