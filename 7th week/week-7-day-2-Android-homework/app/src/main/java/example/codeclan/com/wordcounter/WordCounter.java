package example.codeclan.com.wordcounter;

/**
 * Created by user on 17/01/2017.
 */
public class WordCounter {
    public WordCounter() {

    }

    public int getCount(String text) {
        String[] wordArray = text.split(" ");
        return wordArray.length;
    }
}
