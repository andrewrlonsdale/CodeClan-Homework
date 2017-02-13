public class Human{
  private String name;
  private Food[] belly; /*array*/

  public Human(String name){
    this.name = name;
    this.belly = new Food[5];
  }
  public String getName(){
    return this.name;
  }

  public void eat(Food food) {
    if (isBellyFull()) return;

    int foodCount = foodCount();
    belly[foodCount] = food;
  }

  public int foodCount() {
    int count = 0;
    for(Food Food : belly) {
      if(Food != null) {
        count += 1;
      }
    }
    return count;
  }

  public boolean isBellyFull() {
    return foodCount() == belly.length;
  }

  public void sleep() {
  for(int i = 0; i < belly.length; i++) {
    belly[i] = null;
    }
  } 

  
}
