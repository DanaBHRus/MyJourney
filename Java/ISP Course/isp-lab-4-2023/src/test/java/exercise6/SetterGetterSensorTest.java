package exercise6;

import aut.isp.lab4.exercise6.LevelSensor;
import aut.isp.lab4.exercise6.PHSensor;
import aut.isp.lab4.exercise6.TemperatureSensor;
import org.junit.Test;

import static org.junit.Assert.assertArrayEquals;

public class SetterGetterSensorTest {

    @Test
    public void getSetValueLevelSensorTest() {
        LevelSensor levelSensor = new LevelSensor("ABC", "Mini", 50F);
        float[] expected = {50F};
        float[] actual = {levelSensor.getValue()};
        assertArrayEquals(expected, actual, 0);
        levelSensor.setValue(100F);
        expected[0] = 100F;
        actual[0] = levelSensor.getValue();
        assertArrayEquals(expected, actual, 0);
    }

    @Test
    public void getSetValueTemperatureSensorTest() {
        TemperatureSensor temperatureSensor = new TemperatureSensor("ABC", "Mini", 25);
        int[] expected = {25};
        int[] actual = {temperatureSensor.getValue()};
        assertArrayEquals(expected, actual);
        temperatureSensor.setValue(27);
        expected[0] = 27;
        actual[0] = temperatureSensor.getValue();
        assertArrayEquals(expected, actual);
    }

    @Test
    public void getSetValuePHSensorTest() {
        PHSensor phSensor = new PHSensor("ABC", "Mini", 6.5F);
        float[] expected = {6.5F};
        float[] actual = {phSensor.getValue()};
        assertArrayEquals(expected, actual, 0);
        phSensor.setValue(7F);
        expected[0] = 7F;
        actual[0] = phSensor.getValue();
        assertArrayEquals(expected, actual, 0);
    }
}
