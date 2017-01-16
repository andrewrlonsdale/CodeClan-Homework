package example.codeclan.com.lab;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Created by Andrew on 16/01/2017.
 */

public class MovieTest {

    Movie movie;

    @Before
    public void before(){
        movie = new Movie("Split", "Horror", 7);
    }


    @Test
    public void canGetTitle(){
        assertEquals("Split", movie.getTitle());
    }

    @Test
    public void canSetTitle(){
        movie.setTitle("Hills have eyes");
        assertEquals("Hills have eyes", movie.getTitle());
    }

    @Test
    public void canGetGenre(){
        assertEquals("Horror", movie.getGenre());
    }

    @Test
    public void canSetGenre(){
        movie.setGenre("Comedy");
        assertEquals("Comedy", movie.getGenre());
    }

    @Test
    public void canGetRanking(){
        assertEquals(7, movie.getRanking());
    }

    @Test
    public void canSetRanking(){
        movie.setRanking(10);
        assertEquals(10, movie.getRanking());
    }

    @Test
    public void toStringOverRide(){
        String output = movie.toString();
        System.out.println(output);
    }
}


