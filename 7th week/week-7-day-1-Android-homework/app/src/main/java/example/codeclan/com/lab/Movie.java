package example.codeclan.com.lab;


/**
 * Created by Andrew on 16/01/2017.
 */
public class Movie {
    private String title;
    private String genre;
    private int currentRanking;

    public Movie(String title, String genre, int currentRanking) {
        this.title = title;
        this.genre = genre;
        this.currentRanking = currentRanking;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public int getRanking() {
        return currentRanking;
    }

    public void setRanking(int ranking) {
        this.currentRanking = ranking;
    }

    @Override
    public String toString() {
        return "Title: " + title + ", Genre: " + genre + ", Ranking: " + currentRanking;
    }
}