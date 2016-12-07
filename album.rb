require('pg')
require_relative('artist')
require_relative("db/sql_runner")

class Album

  attr_accessor :artist_id, :title, :genre
  attr_reader :id

  def initialize (options)
    @id = options ['id'] unless ['id'].nil?
    @title = options['title']
    @genre = options['genre']
    @artist_id = options[ 'artist_id'].to_i
  end

  def artist()
    sql = "select * from artists where id = #{@artist_id};"
    artist = SqlRunner.run( sql )[0]
    return Artist.new( artist )
  end

  def save()
    db = PG.connect({ dbname: 'music_collection', host: 'localhost' })
    sql = 
    "
    INSERT INTO albums
    (title, genre, artist_id )
    VALUES
    ('#{@title}', '#{@genre}', #{@artist_id} )
    RETURNING *;
    "
    @id = db.exec(sql)[0]['id'].to_i
    db.close()
  end

  def self.all()
    db = PG.connect({ dbname: 'music_collection', host: 'localhost' })
    sql = "select * from albums;"
    albums = db.exec(sql)
    db.close()
    return albums.map { |album| Album.new(album) }
  end
  def self.delete_all()
    db = PG.connect({ dbname: 'music_collection', host: 'localhost' })
    sql = "delete from albums;"
    db.exec(sql)
    db.close()
  end

  def delete()
    db = PG.connect({ dbname: 'music_collection', host: 'localhost' })
    sql =  "delete from albums where id = #{@id};"
    db.exec(sql)
    db.close()
  end
  def update()
    db = PG.connect({ dbname: 'music_collection', host: 'localhost' })
    sql =
    "
    update albums 
    set (title, genre, artist_id)= 
    ('#{@title}', '#{@genre}', #{@artist_id}) where id = #{@id};
    "
    db.exec(sql)
    db.close()
  end





end