import org.junit.*;
import static org.junit.Assert.*;
import models.*;
import behaviours.*;

public class DiscountTest {

  Discountable discount;
  Basketable basket;
  Itemable item1;
  

  @Before
  public void before(){
    discount = new Discount();
    basket = new Basket();
    item1 = new Item("vodka", 20.00);
  }

  @Test
  public void canPerformBOGOF(){
    discount.setBOGOF(true);
    discount.addBOGOFItem("vodka");

    basket.addItem(item1);
    basket.addItem(item1);

    basket.checkDeals(discount);
    assertEquals(20.00, basket.getFinalTotal(), 0.01);
  }

  @Test
  public void canPerform10PercentOff(){
    discount.setTenPercentOff(true);

    basket.addItem(item1);

    basket.checkDeals(discount);
    assertEquals(18.00, basket.getFinalTotal(), 0.01);
  }

  @Test
  public void canTakeTwoPercentOff(){
    discount.setLoyaltyCard(true);

    basket.addItem(item1);

    basket.checkDeals(discount);
    assertEquals(19.60, basket.getFinalTotal(), 0.01);
  }

  @Test
  public void canApplyAllDiscounts(){
    discount.setBOGOF(true);
    discount.setTenPercentOff(true);
    discount.setLoyaltyCard(true);

    discount.addBOGOFItem("vodka");

    basket.addItem(item1);
    basket.addItem(item1);
    
    basket.checkDeals(discount);
    assertEquals(17.64, basket.getFinalTotal(), 0.01);
  }


}