require('minitest/autorun')
require_relative('library')

class Library_Spec < MiniTest::Test 

  def test_Book_details
    library = LibraryDetails.new([
      {"harry_potter" => {:student_name => "bob",
       :date => "23/12/16"}},
       {"lord_of_the_rings" => 
        {:student_name => "Jeff", 
          :date => "01/12/16"}}] )

    assert_equal([{"harry_potter" => 
      {:student_name => "bob",
       :date => "23/12/16"}},
       {"lord_of_the_rings" => 
        {:student_name => "Jeff",
         :date => "01/12/16"}}],
         library.book_details)
  end











end