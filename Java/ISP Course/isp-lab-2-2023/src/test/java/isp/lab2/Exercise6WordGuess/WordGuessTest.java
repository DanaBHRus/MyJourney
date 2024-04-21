package isp.lab2.Exercise6WordGuess;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class WordGuessTest {

    @Test
    public void countOccurenceTest() {
        char c = 'a';
        String word = "abcada";
        int[] positionArray = new int[20];
        int expected = 3;
        int actual = Exercise6WordGuess.countOccurence(c, word, positionArray);
        assertEquals(expected, actual);
    }
}
