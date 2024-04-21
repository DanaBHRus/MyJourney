package exercise6;

import aut.isp.lab4.exercise6.AquariumController;
import aut.isp.lab4.exercise6.FishFeeder;
import org.junit.Test;

import static org.junit.Assert.assertArrayEquals;

public class AquariumControllerTest {

    @Test
    public void toStringTest() {
        FishFeeder fishFeeder = new FishFeeder("RMN", "Mini", 10);
        AquariumController aquariumController = new AquariumController(fishFeeder, "RMN", "Medio", 10.12F, 10.25F, 20, 50F, 6.2F);
        String expected = "Feeder: The manufacturer RMN makes the model Mini. It has the level of food 10\nThe manufacturer RMN checks the model Medio. Current time 10.12 and feeding time 10.25.\nTemperature of water: 20 Level of water: 50.0 PH: 6.2";
        String actual = aquariumController.toString();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
    }

    @Test
    public void checkTemperatureTest() {
        FishFeeder fishFeeder = new FishFeeder("MNC", "Mini", 10);
        AquariumController aquariumController = new AquariumController(fishFeeder, "MNC", "Medio", 10.35F, 10.45F, 26, 50F, 7F);
        int[] expected = {26};
        aquariumController.checkTemperature();
        int[] actual = {aquariumController.getPresentTemperature()};
        assertArrayEquals(expected, actual);
    }

    @Test
    public void checkWaterLevelTest() {
        FishFeeder fishFeeder = new FishFeeder("MNC", "Mini", 10);
        AquariumController aquariumController = new AquariumController(fishFeeder, "MNC", "Medio", 10.35F, 10.45F, 26, 50F, 7F);
        float[] expected = {100F};
        aquariumController.checkWaterLevel();
        float[] actual = {aquariumController.getPresentLevel()};
        assertArrayEquals(expected,actual,0);
    }

    @Test
    public void checkPHTest(){
        FishFeeder fishFeeder = new FishFeeder("MNC", "Mini", 10);
        AquariumController aquariumController = new AquariumController(fishFeeder, "MNC", "Medio", 10.35F, 10.45F, 26, 50F, 7F);
        float[] expected = {7F};
        aquariumController.checkPH();
        float[] actual = {aquariumController.getPresentPH()};
        assertArrayEquals(expected,actual,0);
    }
}
