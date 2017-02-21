package behaviours;

public interface Discountable {
  public void setBOGOF(boolean buyOneGetOneFree);
  public void addBOGOFItem(String itemName);
  public double checkForDeals(Basketable basket);
  public void setTenPercentOff(boolean tenPercentOff);
  public double bogof(Basketable basket);
  public double tenPercentOff(Basketable basket);
  public double twoPercentOffAndLoyaltyCard(Basketable basket);
  public void setLoyaltyCard(boolean loyaltyCard);
}