package exercise5;

import aut.isp.lab4.exercise5.AquariumController;
import aut.isp.lab4.exercise5.FishFeeder;
import org.junit.Test;

import static org.junit.Assert.assertArrayEquals;

public class AquariumControllerTest {
    @Test
    public void toStringTest() {
        FishFeeder fishFeeder = new FishFeeder("MNC", "Mini", 10);
        AquariumController aquariumController = new AquariumController(fishFeeder, "MNC", "Medio", 10.35F, 10.45F, 16);
        String expected = "Feeder: The manufacturer MNC makes the model Mini. It has the level of food 10\nThe manufacturer MNC checks the model Medio. Current time 10.35 and feeding time 10.45. Temperature of water: 16";
        String actual = aquariumController.toString();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
    }
    @Test
    public void checkTemperatureTest1(){
        FishFeeder fishFeeder = new FishFeeder("MNC", "Mini", 10);
        AquariumController aquariumController = new AquariumController(fishFeeder, "MNC", "Medio", 10.35F, 10.45F, 16);
        int[] expected = {25};
        aquariumController.checkTemperature();
        int[] actual = {aquariumController.getTemperature()};
        assertArrayEquals(expected,actual);
    }

    @Test
    public void checkTemperatureTest2(){
        FishFeeder fishFeeder = new FishFeeder("MNC", "Mini", 10);
        AquariumController aquariumController = new AquariumController(fishFeeder, "MNC", "Medio", 10.35F, 10.45F, 26);
        int[] expected = {26};
        aquariumController.checkTemperature();
        int[] actual = {aquariumController.getTemperature()};
        assertArrayEquals(expected,actual);
    }

}
