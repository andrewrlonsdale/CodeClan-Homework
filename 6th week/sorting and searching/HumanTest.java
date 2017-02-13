import static org.junit.Assert.assertEquals;
import org.junit.*;

public class HumanTest{
  Human human;
  Food dinner;

  @Before 
  public void before() {
    human = new Human("Andrew");
    dinner = new Food();
  }

  @Test
  public void hasName(){
    assertEquals("Andrew", human.getName()); 
  }

  @Test
  public void startsWithNoFood() {
    assertEquals(0, human.foodCount());
  }

  @Test
  public void canSatiateHunger() {
    Food dinner = new Food();
    human.eat(dinner);
    assertEquals(1, human.foodCount());
  }

  @Test
  public void canGetFull(){

    /* for(setup; condition; action) {
      do something
    }

    setup;
    while(condition) */

    for(int i = 0; i < 10; i++) {
      human.eat(dinner);
    }

  //   // int i = 0;
  //   // while(i <10) {
  //   //   human.eat(Food);
  //   //   i++;
  //   // }

    assertEquals(5, human.foodCount());
  }

  @Test
  public void getsFullAfter5Fish() {
    for(int i = 0; i<5; i++) {
      human.eat(dinner);
    }
    assertEquals(true, human.isBellyFull());
  }

  @Test
  public void shouldDigestFoodAfterSleeping() {
    human.eat(dinner);
    human.sleep();
    assertEquals(0, human.foodCount());
  }
}
