=begin
#array farm_animals
farm_animals = ["pig", "horse", "goat", "cow"]
home_animals = []

#hash animals_one
animals_one ={
	name: "Bob", 
	breed: "Arabian", 
	color: "Brown",
	height: "5 Hands"
}

#array.each
farm_animals.each do |key|
	puts key
end

#array.map!
puts farm_animals
farm_animals.map! do |key|	
	key.upcase
end
puts farm_animals

#hash.each
animals_one.each do |key, value| 
	puts "#{key}: #{value}"
end
=end

