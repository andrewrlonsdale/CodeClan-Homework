require_relative( 'customers' )
require_relative( 'films' )
require_relative( 'tickets' )

require( 'pry' )
Ticket.delete_all()
Film.delete_all()
Customer.delete_all()
#----------------------------------
# customers

customer1 = Customer.new({
  'name' => 'Fred',
  'funds' => 50
  })
customer1.save()

customer2 = Customer.new({
  'name' => 'Bob',
  'funds' => 100
  })
customer2.save()
#--------------------------------------
# films

film1 = Film.new({
 'title' => 'Dr Strange',
 'price' => 10
 })
film1.save()

film2 = Film.new({
 'title' => 'Fantastic Beasts',
 'price' => 12
 })
film2.save()
#-----------------------------------------
# tickets

ticket1 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film1.id
  })
ticket1.save

ticket2 = Ticket.new({
  'customer_id' => customer2.id,
  'film_id' => film2.id
  })
ticket2.save

binding.pry
nil