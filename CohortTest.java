import static org.junit.Assert.assertEquals;
import org.junit.*;

public class CohortTest{
  Cohort cohort;

  @Before
  public void before() {
    cohort = new Cohort("Cohort 9");
  }

  @Test
  public void hasName(){
    assertEquals("Cohort 9", cohort.getName());
  }
}