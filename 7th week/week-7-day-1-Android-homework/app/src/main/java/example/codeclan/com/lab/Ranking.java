package example.codeclan.com.lab;


/**
 * Created by Andrew on 16/01/2017.
 */

public class Ranking {

    private Movie[] top10;

    public Ranking(){
        top10 = new Movie[10];
    }

    public void populate(){
        addMovie(new Movie("E.T","Thriller",1));
        addMovie(new Movie("Rogue One: A Star Wars Story","Action",2));
        addMovie(new Movie("Passengers","Action",3));
        addMovie(new Movie("Fight Club","Action",4));
        addMovie(new Movie("The Matrix","Fantasy",5));
        addMovie(new Movie("Back to the Future","Comedy",6));
        addMovie(new Movie("The Avengers","Adventure",7));
        addMovie(new Movie("The Lion King","Animated",8));
        addMovie(new Movie("Aliens","Horror",9));
        addMovie(new Movie("Crouching Tiger, Hidden Dragon","Martial Arts",10));
    }

    public void addMovie(Movie movie){
        top10[movie.getRanking()-1] = movie;
    }

    public Movie getMovie(int rank){
        return top10[rank-1];
    }

    public void addNewMovie(String title, String genre) {
        top10[5].setTitle(title);
        top10[5].setGenre(genre);

    }
}