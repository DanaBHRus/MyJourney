package exercise4;

import aut.isp.lab4.exercise4.AquariumController;
import aut.isp.lab4.exercise4.FishFeeder;
import aut.isp.lab4.exercise4.LightsControl;
import org.junit.Test;

import static org.junit.Assert.assertArrayEquals;

public class AquariumControllerTest {
    @Test
    public void toStringTest() {
        FishFeeder fishFeeder = new FishFeeder("BDS", "Medio", 12);
        LightsControl lightsControl = new LightsControl(6.5F);
        AquariumController aquariumController = new AquariumController(fishFeeder, "ADF", "Medio", 10.15F, 10.30F, lightsControl);
        String expected = "Feeder: The manufacturer BDS makes the model Medio. It has the level of food 12\nThe manufacturer ADF checks the model Medio. Current time 10.15 and feeding time 10.3\nHours at light: 6.5";
        String actual = aquariumController.toString();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
    }

}
