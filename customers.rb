require_relative("db/sqlrunner")

class Customer

  attr_reader :id
  attr_accessor :name, :funds

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @funds = options['funds']
  end


  def save()
    sql = "INSERT INTO customers (name, funds) VALUES ('#{ @name }',#{@funds}) RETURNING id"
    user = SqlRunner.run( sql ).first
    @id = user['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM customers"
    return Customer.get_many(sql)
  end

  def self.delete_all() 
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def self.get_many( sql )
    customers = SqlRunner.run( sql )
    result = customers.map { |customer| Customer.new( customer) }
    return result
  end

  def films()
    sql = "SELECT films.* FROM films
    INNER JOIN tickets ON tickets.film_id = film.id
    WHERE customer_id = #{@id};
    "
    return Film.get_many( sql )
  end

  def booking()
    sql = " 
    SELECT c.name AS customer_name, f.title AS film_title FROM customers c
    INNER JOIN tickets t
    ON c.id = t.customer_id
    INNER JOIN films f
    ON t.film_id = f.id
    WHERE c.id = #{@id};
    "
    return Film.get_many( sql )
    
  end

  
end
