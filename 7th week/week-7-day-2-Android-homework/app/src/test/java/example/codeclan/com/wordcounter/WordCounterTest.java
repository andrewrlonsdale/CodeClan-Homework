package example.codeclan.com.wordcounter;

import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 * Created by user on 17/01/2017.
 */
public class WordCounterTest {

    String testString = "It was the best of times, it was the worst of times, it was the age of wisdom, it was the age of foolishness, it was the epoch of belief, it was the epoch of incredulity, …";
    WordCounter wordCounter;

    @Before
    public void before() {
        wordCounter = new WordCounter();
    }

    @Test
    public void testWordCounter() {
        int result = wordCounter.getCount(testString);
        assertEquals(37, result);
    }
}
