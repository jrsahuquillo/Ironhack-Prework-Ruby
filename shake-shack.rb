# SHAKE SHACK EXERCISE

## Putting all together.

class MilkShake
  def initialize
    @base_price = 3		#Milskshake base price
    @ingredients = [ ]  #Empty list of ingredients  
  end
  #Method to add ingredients to @ingredients list
  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
  #return  our total price to whoever called for it
  total_price_of_milkshake
  
  end

end


class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

#Shack Shop building

class Shakeshop
	#Empty list where to add milkshakes
	def initialize
		@milkshakes = []
	end
	#Method to add milkshakes to @milkshakes list
	def add_milkshakes(milkshake)
		@milkshakes.push(milkshake)
	end
	#Method to checkout all of the milkshakes in our list
	def all_milkshakes_price
		total_price_of_all_milkshakes = 0
		@milkshakes.each do |milkshake|
			total_price_of_all_milkshakes += milkshake.price_of_milkshake
	end
	#Puts total price of all milkshakes
		puts "Total price of all milkshakes is #{total_price_of_all_milkshakes} €"
	end

end

#Nizars milkshake order
nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

puts nizars_milkshake.price_of_milkshake

#Claire milkshake order
claire_milkshake = MilkShake.new
jellybeans = Ingredient.new("Jellybeans", 2)
colored_sugar = Ingredient.new("Colored sugar", 1)
claire_milkshake.add_ingredient(banana)
claire_milkshake.add_ingredient(jellybeans)
claire_milkshake.add_ingredient(colored_sugar)

puts claire_milkshake.price_of_milkshake

#Total order
all_milkshakes = Shakeshop.new
all_milkshakes.add_milkshakes(nizars_milkshake)
all_milkshakes.add_milkshakes(claire_milkshake)
puts all_milkshakes.all_milkshakes_price
