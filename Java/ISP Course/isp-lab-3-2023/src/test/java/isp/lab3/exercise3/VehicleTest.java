package isp.lab3.exercise3;

import org.junit.Test;
import static org.junit.Assert.assertArrayEquals;

public class VehicleTest
{
    @Test
    public void toStringTest() {
        Vehicle vehicle = new Vehicle("VW", "Passat", 200, 'D');
        String expected = "VW(Passat) speed 200 fuel type D";
        String actual = vehicle.toString();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
    }
}