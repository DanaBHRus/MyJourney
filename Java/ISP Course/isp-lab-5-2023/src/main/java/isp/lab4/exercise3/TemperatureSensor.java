package isp.lab4.exercise3;

public class TemperatureSensor extends Sensor {
    private double temperature;
    public TemperatureSensor(String installLocation, String name, double temperature){
        super(installLocation,name);
        this.temperature = temperature;
    }

    public double getTemperature() {
        return temperature;
    }

    @Override
    public String toString(){
        return super.toString() + "\nTemperatureSensor = " + this.temperature;
    }
}
