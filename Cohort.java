public class Cohort {
  private String name;
  private Students[] room;

  public Cohort(String name){
    this.name = name;
    this.room = new Students[5];
  }
  public String getName(){
    return this.name;
  }

  public void add(Students person) {
    if (isRoomFull()) return;

    int personCount = personCount();
    room[personCount] = person;
  }

  public int personCount(){
    int count = 0;
    for(Students student : room) {
      if (student != null) {
        count += 1;
      }
    }
    return count;
  } 


public boolean isRoomFull() {
  return personCount() == room.length;
}
  
  public void empty() {
  for(int i = 0; i < room.length; i++) {
    room[i] = null;
    }
  } 
}