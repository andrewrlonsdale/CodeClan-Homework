require_relative("db/sqlrunner")

class Ticket

  attr_reader :id
  attr_accessor :customer_id, :films_id 

  def initialize( options )
    @id = options['id'].to_i
    @customer_id = options['customer_id'].to_i
    @films_id = options['film_id'].to_i

  end

  def save()
    sql = "INSERT INTO tickets (customer_id, film_id)
    VALUES ('#{ @customer_id }', '#{ @films_id }') 
    RETURNING id"
    ticket = SqlRunner.run( sql ).first
    @id = ticket['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM tickets"
    return Ticket.get_many( sql )
  end

  def self.delete_all() 
    sql = "DELETE FROM tickets"
    SqlRunner.run(sql)
  end
  def self.get_many( sql )
    tickets = SqlRunner.run( sql )
    result = tickets.map { |ticket| Ticket.new( ticket) }
    return result
  end

  def film()
    sql = "SELECT * FROM films WHERE id = #{@films};"
    film = SqlRunner.run( sql ).first
    return Film.new( film )
  end

  def customer()
    sql = "SELECT * FROM customers WHERE id = #{@customer_id}"
    customer = SqlRunner.run( sql ).first
    return Customer.new( customer )
  end



end