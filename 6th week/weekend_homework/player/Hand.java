package player;
import java.util.*;
import card.*;

public class Hand{

  private ArrayList<Card> hand;

  public Hand(){
    this.hand = new ArrayList<Card>();
  }

  public int cardCount(){
    return this.hand.size();
  }

  public void addCard(Card card){
    this.hand.add(card);
  }

  public Card showCard(int index){
    return this.hand.get(index);
  }

  public int calculateValue(){
    int result = 0;
    for (Card card : hand) {
      result += card.typeToInteger();
    }
    return result;
  }


}