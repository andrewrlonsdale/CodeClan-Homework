package models;
import java.util.ArrayList;
import java.util.HashMap;
import behaviours.*;

public class Discount implements Discountable {
  private Basketable basket;
  private ArrayList<String> bogofItems;
  private ArrayList<Itemable> itemsInBasket;
  private HashMap<String, Integer> quantity = new HashMap<>();
  private boolean bogof, tenPercentOff, loyaltyCard;

  public Discount(){
    bogofItems = new ArrayList<String>();
    itemsInBasket = new ArrayList<Itemable>();
    bogof = false;
    tenPercentOff = false;
    loyaltyCard = false;
  }

  public void setBOGOF(boolean bogof){
    this.bogof = bogof;
  }

  public void setTenPercentOff(boolean tenPercentOff){
    this.tenPercentOff = tenPercentOff;
  }

  public void setLoyaltyCard(boolean loyaltyCard){
    this.loyaltyCard = loyaltyCard;
  }

  public void addBOGOFItem(String itemName){
    bogofItems.add(itemName);
  }

  public double checkForDeals(Basketable basket){
    if(bogof){
      basket.setFinalTotal(bogof(basket));
    } 
    else {
      basket.calculateSubTotal();
      basket.setFinalTotal(basket.getSubTotal());
    }
    if(tenPercentOff){
      basket.setFinalTotal(tenPercentOff(basket));
    }
    if(loyaltyCard){
      basket.setFinalTotal(twoPercentOffAndLoyaltyCard(basket));
    }
    return basket.getFinalTotal();
  }

  public double bogof(Basketable basket){
    basket.calculateSubTotal();
    double finalTotal = basket.getSubTotal();
    itemsInBasket = basket.getItems();

    for(Itemable item : itemsInBasket){
      String itemName = item.getName();
      if(bogofItems.contains(itemName) && quantity.containsKey(itemName)){
        quantity.put(itemName, quantity.get(itemName)+1);
      } else {
        quantity.put(itemName, 1);
      }
    }
    for(String itemName : quantity.keySet()){
      if(quantity.get(itemName) % 2 != 0){
        quantity.put(itemName, quantity.get(itemName)-1);
      }
    }
    for(Itemable item : itemsInBasket){
      int numberOfDeductions = quantity.get(item.getName()) / 2;
      double totalDeduction = item.getPrice() * numberOfDeductions;
      quantity.put(item.getName(), 0);
      finalTotal -= totalDeduction;
    }
    return finalTotal;
  }

  public double tenPercentOff(Basketable basket){
    double subTotal = basket.getFinalTotal();
    if(subTotal >= 20){
      basket.setFinalTotal(subTotal * 0.90);
    }
    return basket.getFinalTotal();
  }

  public double twoPercentOffAndLoyaltyCard(Basketable basket){
    double subTotal = basket.getFinalTotal();
    basket.setFinalTotal(subTotal * 0.98);
    return basket.getFinalTotal();
  }

}