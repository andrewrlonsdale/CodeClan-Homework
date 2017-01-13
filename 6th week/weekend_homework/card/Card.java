package card;

public class Card {

    private CardSuit suit;
    private CardType type;

    public Card(CardSuit suit, CardType type) {
      this.suit = suit;
      this.type = type;
    }

    public CardSuit getSuit(){
      return this.suit;
    }

    public CardType getType(){
      return this.type;
    }

}