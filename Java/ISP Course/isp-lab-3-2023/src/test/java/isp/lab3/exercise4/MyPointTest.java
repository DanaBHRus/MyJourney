package isp.lab3.exercise4;

import org.junit.Test;

import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.assertEquals;

public class MyPointTest
{
    @Test
    public void distanceIntTest()
    {
        MyPoint point = new MyPoint();
        int x=1,y=1,z=1;
        double[] expected = new double[1];
        expected[0]=1.7320508075688772;
        double[] actual=new double[1];
        actual[0] = point.distance(x,y,z);
        assertArrayEquals(expected,actual,0);
    }

    @Test
    public void distanceMyPointTest() {
        MyPoint point = new MyPoint();
        MyPoint pointToCompare = new MyPoint(1, 1, 1);
        double[] expected = new double[1];
        expected[0] = 1.7320508075688772;
        double[] actual = new double[1];
        actual[0] = point.distance(pointToCompare);
        assertArrayEquals(expected, actual, 0);
    }
}
