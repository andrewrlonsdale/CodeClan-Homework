require('pry')
require_relative('artist')
require_relative('album')


artist1 = Artist.new({
  "name" => "Bob"
  })

artist1.save

album1 = Album.new({
  "title" => "buffalo soldier",
  "genre" => "reggae",
  "artist_id" => artist1.id()
  })

album1.save

binding.pry
nil