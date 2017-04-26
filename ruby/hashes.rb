=begin
	-Client Info
		-Name
		-Age
		-Num of Children
		-Decor Theme
		-Fav Color
		-Least Fav Color
		-Size of House
		-Num of Rooms
		-Any Animals(boolean- T/F)
	put info into blank hash
	ask if we need to make changes
	if..else options for making corrections

	name: , 
	age: ,
	children: , 
	theme: ,
	fav_color: , 
	least_color: , 
	size: ,
	rooms: , 
	animals: 
	
=end
# Blank Has
client_data = {}

#Entries
puts "Please entry clients information below:"
puts "Client Name: "
	client_data[:name] = gets.chomp
puts "Clients Age: "
	client_data[:age] = gets.chomp.to_i
puts "Number of Children: "
	client_data[:children] = gets.chomp.to_i 
puts "Clients Decor Theme: "
	client_data[:theme] = gets.chomp 
puts "Clients Favorite Color: "
	client_data[:fav_color] = gets.chomp 
puts "Clients Least Favorite Color: "
	client_data[:least_color] = gets.chomp 
puts "Size of Clients House (sqft): "
	client_data[:size] = gets.chomp.to_i 
puts "Number of Rooms in House: "
	client_data[:rooms] = gets.chomp.to_i
puts "Does the Client have any Animals (T/F): "
	if gets.chomp == "T"
		client_data[:animals] = true
	elsif gets.chomp == "F"
		client_data[:animals] = false
	end
p client_data

# Make Corrections
puts "Is there anything you would like to change (Y/N)?"
	if gets.chomp == "Y"
		puts "What would you like to change (Please Enter on of the Following):\n'Name' 'Age' 'Children' 'Theme' 'Fav_Color'"

		correction = gets.chomp.downcase.to_sym
		if correction == :name
			puts "Please Enter Correct Name"
			client_data[:name] = gets.chomp
		elsif correction == :age
			puts "Please Enter Correct "
			client_data[:age] = gets.chomp.to_i
		elsif correction == :children
			puts "Please Enter Correct "
			client_data[:children] = gets.chomp.to_i
		elsif correction == :theme
			puts "Please Enter Correct "
			client_data[:theme] = gets.chomp 
		elsif correction == :fav_color
			puts "Please Enter Correct "
			client_data[:fav_color] = gets.chomp 
		elsif correction == :least_color
			puts "Please Enter Correct "
			client_data[:least_color] = gets.chomp
		elsif correction == :size
			puts "Please Enter Correct "
			client_data[:size] = gets.chomp.to_i
		elsif correction == :animals
			puts "Please Enter Correct "
			if gets.chomp == "T"
				client_data[:animals] = true
			elsif gets.chomp == "F"
				client_data[:animals] = false
			end
		end
	else
end

# Print out updated list
	puts client_data
	puts "Looks Good! Have a Nice Day!!"