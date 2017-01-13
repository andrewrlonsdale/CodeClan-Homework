import java.util.*;

public class Cohort {
  private String name;
  private ArrayList<Classroom> room;

  public Cohort(String name){
    this.name = name;
    this.room = new ArrayList<Classroom>();
  }
  public String getName(){
    return this.name;
  }

  public void add(Classroom person) {
    room.add(person);
  }

  public int personCount(){
    return room.size();
  } 
  public void empty(){
    room.clear();
  }
}