import static org.junit.Assert.*;
import org.junit.*;

public class CohortTest{
  Cohort cohort;
  Students student;

  @Before
  public void before() {
    cohort = new Cohort("Cohort 9");
    student = new Students();
  }

  @Test
  public void hasName(){
    assertEquals("Cohort 9", cohort.getName());
  }

  @Test
  public void startsWithNoStudent() {
    assertEquals(0, cohort.personCount());
  }

  @Test
  public void canFillClass(){
    Students student = new Students();
    cohort.add(student);
    assertEquals(1, cohort.personCount());
  }

  @Test
  public void shouldEmptyClassAfterHometime() {
    cohort.add(student);
    cohort.empty();
    assertEquals(0, cohort.personCount());
  }
}
