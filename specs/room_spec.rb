require("minitest/autorun")
require("minitest/rg")
require_relative ("../room.rb")
require_relative ("../guest.rb")
require_relative ("../song.rb")

class RoomSpec < MiniTest::Test



  def test_create_new_room
    room = Room.new("Honeymoon Suite")
    assert_equal("Honeymoon Suite", room.add_room)
  end

  def test_room
    room = Room.new("Honeymoon Suite")
    assert_equal(0,room.count_rooms)
  end

  def test_add_person_to_room
    room = Room.new("Honeymoon Suite")
    guest = Guest.new("Andrew Lonsdale")

    room.add_guest(guest)
    room.count_rooms

    assert_equal(1, room.count_rooms)
  end

  def test_remove_person_from_room
    room = Room.new("Honeymoon Suite")
    guest = Guest.new("Andrew Lonsdale")

    room.add_guest(guest)
    room.remove_guest(guest)
    room.count_rooms()

    assert_equal(0, room.count_rooms)
  end

  def test_add_song_to_room
    room = Room.new("Penthouse Suite")
    song = Song.new("Thriller - MJ")

    room.add_song(song)
    room.count_music_rooms()
    assert_equal(1, room.count_music_rooms)
  end

end

