class Room

  attr_accessor :add_room


  def initialize (add_room)
    @add_room = add_room
    @room = []
    @music_rooms = []
  end

  def count_rooms
   return @room.count()
  end

  def count_music_rooms
   return @music_rooms.count()
  end

def add_guest(person)
  @room << person
end

def add_song(song)
  @music_rooms << song
end



def remove_guest(person)
  @room.delete(person)
end

end