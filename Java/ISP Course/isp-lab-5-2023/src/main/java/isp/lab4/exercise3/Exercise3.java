package isp.lab4.exercise3;

public class Exercise3 {
    public static void main(String args[]) {
        MonitoringService monitoringService = new MonitoringService();
        monitoringService.addAPressureSensor("ABC","S1",25);
        monitoringService.addATemperatureSensor("ABC","S2",25);
        monitoringService.addATemperatureSensor("ABC","S3",41);
        System.out.println("Total average: " + monitoringService.getAverageAllSensors());
        System.out.println("Average for average: " + monitoringService.getAverageTemperatureSensors());
    }
}
