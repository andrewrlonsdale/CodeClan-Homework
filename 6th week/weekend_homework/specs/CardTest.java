import static org.junit.Assert.*;
import org.junit.*;

public class CardTest {

  Card card;

  @Before 
  public void before() {
    card = new Card(CardSuit.SPADES, CardType.KING);
  }

  @Test
  public void canHaveSuit(){
    assertEquals(CardSuit.SPADES, card.getSuit());
  }

  @Test
  public void canHaveType(){
    assertEquals(CardType.KING, card.getType());
  }
}