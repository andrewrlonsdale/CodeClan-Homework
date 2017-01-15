import static org.junit.Assert.*;
import org.junit.*;
import player.*;
import card.*;


public class HandTest {

  Hand hand;

    @Before 
    public void before() {
      hand = new Hand();
    }

    @Test
    public void canHandBeEmpty(){
      assertEquals(0, hand.cardCount());
    }

    @Test
    public void canAddCards(){
      Card card1 = new Card(CardSuit.SPADES, CardType.KING);
      hand.addCard(card1);
      assertEquals(1, hand.cardCount());
    }

    @Test
    public void canShowCard(){
      Card card1 = new Card(CardSuit.HEARTS, CardType.QUEEN);
      Card card2 = new Card(CardSuit.SPADES, CardType.ACE);
      hand.addCard(card1);
      hand.addCard(card2);
      assertEquals(card1, hand.showCard(0));
    }

    @Test
    public void canCalculateHandValue(){
      Card card1 = new Card(CardSuit.SPADES, CardType.KING);
      Card card2 = new Card(CardSuit.SPADES, CardType.ACE);
      hand.addCard(card1);
      hand.addCard(card2);
      int result = hand.calculateValue();
      assertEquals(16, result);
    }

  }