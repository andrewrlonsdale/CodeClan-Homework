package card;
import java.util.*;
public class Deck{

  private ArrayList<Card> cards;

  public Deck(){
    this.cards = new ArrayList<Card>();
  }

  public ArrayList getCards(){
    return this.cards;
  }

  public int cardCount(){
    return cards.size();
  }

  public void addCard(Card card){
    cards.add(card);
  }

  public void buildDeck(){
    for (CardSuit suit: CardSuit.values()) {
    for (CardType value: CardType.values()){
      cards.add(new Card(suit, value));
     }
     Collections.shuffle(cards);
    }
  }
  public Card dealCard(){
    return cards.remove(0);
  }
 
}
