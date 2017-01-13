class Student

  attr_accessor :student_name
  attr_reader :cohort_number
  attr_reader :student_talk
  attr_reader :fav_language

  def initialize(student_name, cohort_number, student_talk, fav_language)
    @student_name = student_name
    @cohort_number = cohort_number
    @student_talk = student_talk
    @fav_language = fav_language
  end
end