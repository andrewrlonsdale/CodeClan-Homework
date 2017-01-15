import static org.junit.Assert.*;
import org.junit.*;
import card.*;
import player.*;


public class DeckTest {

  Deck deck;
  Player player;

    @Before 
    public void before() {
      deck = new Deck();
      player = new Player("Andrew");
    }

    @Test
    public void canDeckBeEmpty(){
      assertEquals(0, deck.cardCount());
    }

    @Test
    public void canAddCards(){
      Card card = new Card(CardSuit.SPADES, CardType.SIX);
      deck.addCard(card);
      assertEquals(1, deck.cardCount());
    }

    @Test
    public void canBuildDeck(){
      deck.buildDeck();
      assertEquals(52, deck.cardCount());
    }

    @Test
    public void canDealCard(){
      deck.buildDeck();
      deck.dealCard();
      assertEquals(51, deck.cardCount());
    }
  }
