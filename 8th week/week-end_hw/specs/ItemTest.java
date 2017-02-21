import org.junit.*;
import static org.junit.Assert.*;
import java.util.ArrayList;
import models.*;
import behaviours.*;

public class ItemTest {

  Itemable item;

  @Before
   public void before(){
     item = new Item("coke", 1.00);
   }

@Test
public void canGetPrice(){
  assertEquals(1.00, item.getPrice(),0.01);
}

@Test
public void canGetName(){
  assertEquals("coke", item.getName());
}


}
