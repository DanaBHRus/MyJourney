package isp.lab4.exercise3;

public class MonitoringService {
    private Sensor[] sensors = new Sensor[10];
    private int length;

    public MonitoringService() {
        this.length = 0;
    }

    public void addATemperatureSensor(String installLocation, String name, double temperature) {
        sensors[length] = new TemperatureSensor(installLocation, name, temperature);
        this.length++;
    }

    public void addAPressureSensor(String installLocation, String name, double pressure) {
        sensors[length] = new PressureSensor(installLocation, name, pressure);
        this.length++;
    }

    public double getAverageTemperatureSensors() {
        double sum = 0;
        int number = 0;
        TemperatureSensor temperatureSensor = new TemperatureSensor("ABC", "S1", 15);
        int i = 0;
        for (i = 0; i < length; i++) {
            if (sensors[i].getClass() == temperatureSensor.getClass()) {
                temperatureSensor = (TemperatureSensor) sensors[i];
                sum += temperatureSensor.getTemperature();
                number++;
            }
        }
        if (number == 0)
            return -1;
        else
            return sum / number;
    }

    public double getAverageAllSensors() {
        double sum = 0;
        int number = 0;
        TemperatureSensor temperatureSensor = new TemperatureSensor("ABC", "S1", 15);
        PressureSensor pressureSensor = new PressureSensor("ABC", "S2", 50);
        int i = 0;
        for (i = 0; i < length; i++) {
            if (sensors[i].getClass() == temperatureSensor.getClass()) {
                temperatureSensor = (TemperatureSensor) sensors[i];
                sum += temperatureSensor.getTemperature();
                number++;
            } else {
                pressureSensor = (PressureSensor) sensors[i];
                sum += pressureSensor.getPressure();
                number++;
            }
        }
        if (number == 0)
            return -1;
        else
            return sum / number;
    }
}
