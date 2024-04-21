package exercise4;

import aut.isp.lab4.exercise4.LightsControl;
import org.junit.Test;
import static org.junit.Assert.assertArrayEquals;

public class LightsControlTest {
    @Test
    public void checkHoursOfLightTest() {
        LightsControl lightsControl = new LightsControl(10F);
        lightsControl.checkHoursOfLight();
        String expected = "Hours at light: 7.0";
        String actual = lightsControl.toString();
        assertArrayEquals(expected.toCharArray(),actual.toCharArray());
    }

    @Test
    public void toStringTest(){
        LightsControl lightsControl = new LightsControl(10F);
        String expected = "Hours at light: 10.0";
        String actual = lightsControl.toString();
        assertArrayEquals(expected.toCharArray(),actual.toCharArray());
    }
}
