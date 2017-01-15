package player;

import java.util.*;
import card.*;
import player.*;

public class Game {

  private ArrayList<Player> players;
  private Deck deck;


  public Game(){
    this.players = new ArrayList<Player>();
    this.deck = new Deck();
  }

  public void startGame(){
    this.deck.buildDeck();    
  }

  public int countPlayers(){
    return players.size();
  }

  public void addPlayer(Player player){
    players.add(player);
    System.out.println(player.getName() + " is playing");
  }

  public void addDealer(Dealer dealer){
    players.add(dealer);
    System.out.println("The dealer is " + dealer.getName());
  }

  public void dealCardsToAll(){
    int i = 0;
    for (i = 0; i < 2; i++){
      for (Player player:players){
        Card card = deck.dealCard();
        player.receiveCard(card);
      }
    }
  }

  public void showAllHands(){
    for (Player player:players){
          System.out.println(player.getName() + "'s hand is " + player.showHand());
    }
  }

  public void declareWinner(){
    Player player = players.get(0);
    Player dealer = players.get(1);
      
      if (player.showHand() > 21 && dealer.showHand() <= 21){
      System.out.println(dealer.getName() + " wins !!!");
      }
      else if (dealer.showHand() > 21 && player.showHand() <= 21){
      System.out.println(player.getName() + " wins !!!");
      }
      else if (player.showHand() > dealer.showHand()){
        System.out.println(player.getName() + " wins !!!");
      }
      else if (player.showHand() > 21 && dealer.showHand() > 21){
      System.out.println("Nobody wins, deal again");
      }
      else if (player.showHand() == dealer.showHand()){
        System.out.println("It's a Draw");
      }
      else 
        System.out.println(dealer.getName() + " wins !!!");
  }
 
}  