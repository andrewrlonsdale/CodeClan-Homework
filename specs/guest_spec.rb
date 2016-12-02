require("minitest/autorun")
require("minitest/rg")
require_relative ("../guest.rb")

class GuestSpec < MiniTest::Test



  def test_create_new_guest
    guest = Guest.new(" Andrew Lonsdale")
    assert_equal(" Andrew Lonsdale", guest.add_guest)

  end
end
