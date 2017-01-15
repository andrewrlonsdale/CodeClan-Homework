import static org.junit.Assert.*;
import org.junit.*;
import player.*;
import card.*;

public class GameTest {

  Game game;

  @Before 
  public void before() {
    game = new Game();
  }

  @Test
  public void testCountPlayers(){
    assertEquals(0, game.countPlayers());
  }

  @Test
  public void testCanAddPlayers(){
    Player player = new Player("Andrew");
    Dealer dealer = new Dealer("Bob");
    game.addPlayer(player);
    game.addDealer(dealer);
    assertEquals(2, game.countPlayers());
  }

  @Test
  public void testDealCardsToAll(){
    Player player = new Player("Andrew");
    Dealer dealer = new Dealer("Bob");
    game.startGame();
    game.addPlayer(player);
    game.addPlayer(dealer);
    game.dealCardsToAll();
    Hand hand = player.getHand();
    int result = hand.cardCount();
    assertEquals(2, result);
  }

}