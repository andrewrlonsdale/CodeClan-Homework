require("minitest/autorun")
require("minitest/rg")
require_relative ("../song.rb")

class SongSpec < MiniTest::Test



  def test_create_new_song
    song = Song.new("Jingle Bells")
    assert_equal("Jingle Bells", song.add_song)

  end
end
