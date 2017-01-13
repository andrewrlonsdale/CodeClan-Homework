require('pg')
require_relative("db/sql_runner")

class Artist

attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i unless ['id'].nil?
    @name = options['name']
  end

  def save()
    db = PG.connect({ dbname: 'music_collection', host: 'localhost' })
    sql = 
    "
    INSERT INTO artists (name)
    VALUES
    ('#{@name}')
    RETURNING *;
    "
    @id = db.exec(sql)[0]['id'].to_i
    db.close()
  end

  def self.all()
    sql = " select * from artists;"
    artists = SqlRunner.run( sql )
    return artists.map { |artist| Artist.new( artist )}
  end

  def album()
    sql = " select * from albums where artist_id = #{ @id };"
    albums = SqlRunner.run( sql )
    return albums.map { |album| Album.new( album )}
  end

end