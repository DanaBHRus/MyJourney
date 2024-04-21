package exercise6;

import aut.isp.lab4.exercise6.*;
import org.junit.Test;

import static org.junit.Assert.assertArrayEquals;

public class ToStringTests {
    @Test
    public void toStringSensorTest() {
        LevelSensor levelSensor = new LevelSensor("ABC", "Mini", 25F);
        String expected = "Sensor - manufacturer: ABC, model: Mini";
        String actual = levelSensor.toString();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
        TemperatureSensor temperatureSensor = new TemperatureSensor("ABC", "Mini", 25);
        expected = "Sensor - manufacturer: ABC, model: Mini";
        actual = temperatureSensor.toString();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
        PHSensor phSensor = new PHSensor("ABC", "Mini", 6.5F);
        expected = "Sensor - manufacturer: ABC, model: Mini";
        actual = phSensor.toString();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
    }

    @Test
    public void toStringActuatorTest()
    {
        Alarm alarm = new Alarm("MNB","Mini");
        String expected = "Actuator - manufacturer: MNB, model: Mini";
        String actual = alarm.toString();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
        Heater heater = new Heater("MNB", "Mini");
        expected = "Actuator - manufacturer: MNB, model: Mini";
        actual = heater.toString();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
    }

    @Test
    public void toStringFishFeederTest() {
        FishFeeder fishFeeder = new FishFeeder("DBS", "Medio", 10);
        String expected = "The manufacturer DBS makes the model Medio. It has the level of food 10";
        String actual = fishFeeder.toString();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
    }

}
