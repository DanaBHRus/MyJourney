package aut.isp.lab4.exercise1;

import org.junit.Test;

import static org.junit.Assert.assertArrayEquals;

public class AquariumControllerTest {
    @Test
    public void toStringTest() {
        AquariumController aquariumController = new AquariumController("DBS", "Grande", 10.15F);
        String expected = "The manufacturer DBS checks the model Grande at 10.15";
        String actual = aquariumController.toString();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
    }
}
