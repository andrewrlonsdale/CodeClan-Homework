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
      Card card1 = new Card(CardSuit.SPADES, CardType.JACK);
      hand.addCard(card1);
      assertEquals(1, hand.cardCount());
    }

    @Test
    public void canShowCard(){
      Card card1 = new Card(CardSuit.HEARTS, CardValue.QUEEN);
      Card card2 = new Card(CardSuit.SPADES, CardValue.ACE);
      hand.addCard(card1);
      hand.addCard(card2);
      assertEquals(card1, hand.showCard(0));
    }

    @Test
    public void canCalculateHandValue(){
      Card card1 = new Card(CardSuit.SPADES, CardValue.JACK);
      Card card2 = new Card(CardSuit.SPADES, CardValue.ACE);
      hand.addCard(card1);
      hand.addCard(card2);
      int result = hand.calculateValue();
      assertEquals(25, result);
    }

  }