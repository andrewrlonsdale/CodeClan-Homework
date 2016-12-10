require_relative("db/sqlrunner")

class Film 

  attr_reader :id
  attr_accessor :title, :price 

  def initialize( options )
    @id = options['id'].to_i
    @title = options['title']
    @price = options['price']
  end

  def save()
    sql = "INSERT INTO films (title, price) VALUES ('#{ @title }', '#{ @price }') RETURNING id"
    film = SqlRunner.run( sql ).first
    @id = film['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM films"
    return Film.get_many( sql )
  end

  def self.delete_all() 
    sql = "DELETE FROM films"
    SqlRunner.run(sql)
  end

  def self.get_many( sql )
    films = SqlRunner.run( sql )
    films_objects = films.map{ 
      |film| Film.new( film) }
    return films_objects
  end
  def customers()
    sql = "SELECT customers.* FROM customers
    INNER JOIN tickets ON tickets.customer_id = customers.id
    WHERE film_id = #{@id};
    "
    return Customer.get_many( sql )
  end
  def booking()
    sql = " 
    SELECT c.name AS customer_name, f.title AS film_title FROM customers c
    INNER JOIN tickets t
    ON c.id = t.customer_id
    INNER JOIN films f
    ON t.film_id = f.id
    WHERE f.id = #{@id};
    "
    return Customer.get_many( sql )    
  end

end