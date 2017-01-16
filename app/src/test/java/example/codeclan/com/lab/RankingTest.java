package example.codeclan.com.lab;

import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Created by Andrew on 16/01/2017.
 */
public class RankingTest {

    Ranking rankings;
    Movie movie;

    @Test
    public void canGetMovieFromRankings() {
        rankings = new Ranking();
        rankings.populate();
        movie = rankings.getMovie(5);
        assertEquals("The Matrix", movie.getTitle());

    }

    @Test
    public void canReplaceMovieAtEndWithANewOne() {
        rankings = new Ranking();
        rankings.populate();
        rankings.addNewMovie("Ted", "Comedy");
        movie = rankings.getMovie(6);
        assertEquals("Ted", movie.getTitle());
    }

}

