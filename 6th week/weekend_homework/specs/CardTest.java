import static org.junit.Assert.*;
import org.junit.*;
import card.*;

public class CardTest {

  Card card;

  @Before 
  public void before() {
    card = new Card(CardSuit.SPADES, CardType.KING);
  }

  @Test
  public void cardCanHaveSuit(){
    assertEquals(CardSuit.SPADES, card.getSuit());
  }

  @Test
  public void cardCanHaveType(){
    assertEquals(CardType.KING, card.getType());
  }
  @Test
    public void canConvertTypeToInteger(){
      assertEquals(14, card.typeToInteger());
    }
}