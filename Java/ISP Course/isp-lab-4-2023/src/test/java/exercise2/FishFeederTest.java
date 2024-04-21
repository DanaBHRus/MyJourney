package exercise2;

import aut.isp.lab4.exercise2.FishFeeder;
import org.junit.Test;

import static org.junit.Assert.assertArrayEquals;

public class FishFeederTest {
    @Test
    public void toStringTest() {
        FishFeeder fishFeeder = new FishFeeder("DBS", "Medio", 10);
        String expected = "The manufacturer DBS makes the model Medio. It has the level of food 10";
        String actual = fishFeeder.toString();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
    }

    @Test
    public void getMealTest() {
        FishFeeder fishFeeder = new FishFeeder("DBS", "Medio", 10);
        int[] expected = {10};
        int[] actual = {fishFeeder.getMeals()};
        assertArrayEquals(expected, actual);
    }
}
