require_relative('../db/sql_runner')

class Food

  attr_reader( :name, :country, :spicy, :ingredients, :recipe, :id )

  def initialize( options )
    @id = nil || options['id'].to_i
    @name = options['name'].to_s
    @country = options['country'].to_s
    @spicy = options['spicy'].to_s
    @ingredients = options['ingredients'].to_s
    @recipe = options['recipe'].to_s
  end

  def save()
    sql = "INSERT INTO Food (
    name,country,spicy,ingredients,recipe ) VALUES 
    ('#{ @name }','#{ @country }','#{ @spicy }','#{ @ingredients }','#{@recipe}') 
    RETURNING *"
    food_data = SqlRunner.run(sql)
    @id = food_data.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM Food"
    foods = SqlRunner.run( sql )
    result = foods.map { |food| Food.new( food ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM Food WHERE id=#{id}"
    foods = SqlRunner.run( sql )
    result = Food.new( foods.first )

    return result
  end

  def self.update( options )
    sql = "UPDATE Food SET
    name='#{options['name']}',
    country='#{options['country']}',
    spicy='#{options['spicy']}',
    ingredients='#{options['ingredients']}',
    recipe='#{options['recipe']}'
    WHERE id='#{options['id']}'"
    SqlRunner.run( sql )
  end

  def self.destroy( id )
    sql = "DELETE FROM Food WHERE id=#{id}"
    SqlRunner.run( sql )
  end

  def self.get_many(sql)
    foods = SqlRunner.run(sql)
    result = foods.map { |food| Food.new(food)}
    return result
  end

  def self.search_by_country(country_search)
    sql ="SELECT food.* FROM Food WHERE country='#{country_search}'"

    foods = SqlRunner.run( sql )
    result = foods.map { |food| Food.new( food ) }
    return result
  end

end
