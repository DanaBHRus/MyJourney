package exercise3;

import isp.lab4.exercise3.MonitoringService;
import org.junit.Test;

import static java.lang.Double.valueOf;
import static org.junit.Assert.assertEquals;

public class MonitoringServiceTest {
    public void makeMonitoringServiceObjectTest(MonitoringService monitoringService) {
        monitoringService.addAPressureSensor("ABC", "S1", 25);
        monitoringService.addATemperatureSensor("ABC", "S2", 25);
        monitoringService.addATemperatureSensor("ABC", "S3", 41);
    }

    @Test
    public void getAverageAllSensorsTest() {
        MonitoringService monitoringService = new MonitoringService();
        makeMonitoringServiceObjectTest(monitoringService);
        Double expected = valueOf(30.333333333333332);
        Double actual = valueOf(monitoringService.getAverageAllSensors());
        assertEquals(expected, actual, 0);
    }

    @Test
    public void getAverageTemperatureSensorsTest() {
        MonitoringService monitoringService = new MonitoringService();
        makeMonitoringServiceObjectTest(monitoringService);
        Double expected = valueOf(33.0);
        Double actual = valueOf(monitoringService.getAverageTemperatureSensors());
        assertEquals(expected, actual, 0);
    }
}
