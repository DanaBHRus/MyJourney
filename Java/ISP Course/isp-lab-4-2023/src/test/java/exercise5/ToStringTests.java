package exercise5;

import aut.isp.lab4.exercise5.FishFeeder;
import aut.isp.lab4.exercise5.LevelSensor;
import aut.isp.lab4.exercise5.TemperatureSensor;
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
    }

    @Test
    public void toStringFishFeederTest() {
        FishFeeder fishFeeder = new FishFeeder("DBS", "Medio", 10);
        String expected = "The manufacturer DBS makes the model Medio. It has the level of food 10";
        String actual = fishFeeder.toString();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
    }

}
