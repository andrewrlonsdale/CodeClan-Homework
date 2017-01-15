import static org.junit.Assert.*;
import org.junit.*;
import player.*;
import card.*;



public class PlayerTest {

  Player player;

  @Before 
  public void before() {
    player = new Player("Andrew");
  }

  @Test
  public void playerCanHaveName() {
    assertEquals("Andrew", player.getName());
  }

  @Test
  public void canHaveEmptyHand() {
    Hand hand = player.getHand();
    assertEquals(0, hand.cardCount());
  }

  @Test
  public void canReceiveCard(){
    Card card1 = new Card(CardSuit.SPADES, CardType.QUEEN);
    Card card2 = new Card(CardSuit.CLUBS, CardType.KING);
    player.receiveCard(card1);
    player.receiveCard(card2);
    Hand hand = player.getHand();
    assertEquals(2, hand.cardCount());
  }

  @Test
  public void canPlayerShowHand(){
    Card card1 = new Card(CardSuit.SPADES, CardType.QUEEN);
    Card card2 = new Card(CardSuit.CLUBS, CardType.KING);
    player.receiveCard(card1);
    player.receiveCard(card2);
    assertEquals(27, player.showHand());
  }


}