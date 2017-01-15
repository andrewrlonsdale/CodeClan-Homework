import static org.junit.Assert.*;
import org.junit.*;

import player.*;
import card.*;

public class DealerTest {

  Dealer dealer;

  @Before 
  public void before() {
    dealer = new Dealer("Bob");
  }

  @Test
  public void canHaveName() {
    assertEquals("Bob", dealer.getName());
  }

  @Test
  public void canHaveEmptyHand() {
    Hand hand = dealer.getHand();
    assertEquals(0, hand.cardCount());
  }

  @Test
  public void canReceiveCard(){
    Card card1 = new Card(CardSuit.SPADES, CardType.QUEEN);
    Card card2 = new Card(CardSuit.CLUBS, CardType.KING);
    dealer.receiveCard(card1);
    dealer.receiveCard(card2);
    Hand hand = dealer.getHand();
    assertEquals(2, hand.cardCount());
  }

  @Test
  public void canDealerShowsHand(){
    Card card1 = new Card(CardSuit.SPADES, CardType.QUEEN);
    Card card2 = new Card(CardSuit.CLUBS, CardType.KING);
    dealer.receiveCard(card1);
    dealer.receiveCard(card2);
    assertEquals(27, dealer.showHand());
  }

 
}