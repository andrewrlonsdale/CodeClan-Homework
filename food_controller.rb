require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative('./models/food')

# get all `food
get '/food' do
  @foods = Food.all()
  erb(:index)
end

# new pizza form
get '/food/new' do
  erb(:new)
end

# search by country
post '/food/search' do
  @foods = Food.search_by_country(params[:country])
  erb(:search)
end

# actually make a recipe
post '/food' do
  @food = Food.new(params)
  @food.save()
  erb(:create)
end

# get / find a food by id
get '/food/:id' do
  id = params[:id]
  @food = Food.find(id)
  erb(:show)
end

# get edit food form
get '/food/:id/edit' do
  @food = Food.find(params[:id])
  erb(:edit)
end

# actually update a food by id
#PUT
post '/food/:id' do
  Food.update(params)
  redirect to "/food/#{params[:id]}"
end

# delete a food by id
# DELETE
post '/food/:id/delete' do
  Food.destroy( params[:id])
  redirect to('/food')
end