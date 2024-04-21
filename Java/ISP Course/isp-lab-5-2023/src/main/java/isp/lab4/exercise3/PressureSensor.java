package isp.lab4.exercise3;

public class PressureSensor extends Sensor{
    private double pressure;
    public PressureSensor(String installLocation, String name, double pressure){
        super(installLocation,name);
        this.pressure = pressure;
    }

    public double getPressure() {
        return pressure;
    }

    @Override
    public String toString(){
        return super.toString() + "\nPressureSensor = " + this.pressure;
    }
}
