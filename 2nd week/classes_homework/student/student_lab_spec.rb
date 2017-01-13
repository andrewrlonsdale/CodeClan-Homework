require('minitest/autorun')
require_relative('student_lab')

class Student_spec < MiniTest::Test 

  def test_student_name
    student_lab = Student.new("Andrew", 9, "hello", "Java")
    assert_equal("Andrew", student_lab.student_name)
  end

  def test_change_name
    student_lab = Student.new("Bob", 9, "nice to meet you", "C")
    student_lab.student_name = "Charlie"
    assert_equal("Charlie", student_lab.student_name)
  end
  
  def test_cohort_number
    student_lab = Student.new("Dave", 9, "hiya", "Html")
    assert_equal(9, student_lab.cohort_number)
  end

  def test_student_talk
  student_lab = Student.new("Camden", 9, "hi", "python")
  assert_equal("hi", student_lab.student_talk)
  end

    def test_fav_language
    student_lab = Student.new("Harrison", 9, "bye", "ruby")
    assert_equal("ruby", student_lab.fav_language)
    end
end