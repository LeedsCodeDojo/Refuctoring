package io.github.leedscodedojo;

import org.junit.Test;

import static io.github.leedscodedojo.FizzBuzzer.fizzBuzz;
import static org.junit.Assert.assertEquals;

public class FizzBuzzerTests {
    @Test
    public void testApp() {
        assertEquals("1", fizzBuzz(1));
        assertEquals("2", fizzBuzz(2));
        assertEquals("Fizz", fizzBuzz(3));
        assertEquals("4", fizzBuzz(4));
        assertEquals("Buzz", fizzBuzz(5));
        assertEquals("Fizz", fizzBuzz(6));
        assertEquals("7", fizzBuzz(7));
        assertEquals("FizzBuzz", fizzBuzz(15));
    }
}
