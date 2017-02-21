import org.junit.*;
import static org.junit.Assert.*;
import java.util.ArrayList;
import models.*;
import behaviours.*;

public class BasketTest {

  Itemable item, item2;
  Basketable basket;

  @Before
  public void before(){
    item = new Item("coke", 1.00);
    basket = new Basket();
  }

  @Test
  public void isEmpty(){
    assertEquals(0, basket.itemCount());
  }
  

  @Test
  public void canAddItem(){
    basket.addItem(item);
    assertEquals(1, basket.itemCount());
  }

  @Test
  public void canRemoveItem(){
    basket.addItem(item);
    basket.removeItem(item);
    assertEquals(0, basket.itemCount());
  }

  @Test
  public void canEmptyBasket(){
    item2 = new Item ("Vodka", 20.00);
    basket.addItem(item);
    basket.addItem(item2);
    basket.empty();
    assertEquals(0, basket.itemCount());
  }

  @Test
    public void canGetItems(){
      basket.addItem(item);
      ArrayList<Itemable> returnedItems = basket.getItems();
      Item returnedItem = (Item) returnedItems.get(0);
      assertEquals("coke", returnedItem.getName());
    }

    @Test
    public void canGetSubTotal(){
      basket.addItem(item);
      basket.calculateSubTotal();
      assertEquals(1.00, basket.getSubTotal(), 0.01);
    }

    @Test
    public void canSetFinalTotal(){
      basket.setFinalTotal(20.00);
      assertEquals(20.00, basket.getFinalTotal(), 0.01);
    }

  
}