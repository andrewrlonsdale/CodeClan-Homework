import java.util.*;
import specs.*;
import card.*;

class Runner {

  public static void main(String[] args) {
    Game game = new Game();
    Player player1 = new Player("Andrew");
    Dealer dealer = new Dealer("Bob");

    game.startGame();
    game.addPlayer(player1);
    game.addDealer(dealer);

    game.dealCardsToAll();
    game.showAllHands();

    game.declareWinner();


  }
}