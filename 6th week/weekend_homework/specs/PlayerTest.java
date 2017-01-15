import static org.junit.Assert.*;
import org.junit.*;
import player.*;


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

}