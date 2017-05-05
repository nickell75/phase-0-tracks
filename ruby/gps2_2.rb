# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create HASH
  # set default quantity - 1
  # 
  # print the list to the console [can you use one of your other methods here?]
# output: list

def create_list(items)
	items_array = items.split(' ')
	grocery_hash = {}
	items_array.each do |item|		
		# Refactor Provided by John Gill
		add_item(grocery_hash, item)
		#grocery_hash[item] = 1
	end
	grocery_hash
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
	# add item to list
# output: updated list

def add_item(list, item, quantity = 1)
	list[item] = quantity
end

# Method to remove an item from the list
# input: list, item name
# steps: 
	# delete item from list
# output: updated list

def remove_item(list, item)
  list.delete(item)
  list
end

# Method to update the quantity of an item
# input:list, item, updated quantity
# steps:
  # add new quantity amount to quantity 
# output: updated list

def update_quantity(list, item, quantity)
  if list.has_key?(item)
    list[item] = quantity
  else
    puts "No Item Found"
  end
  list
end

# Method to print a list and make it look pretty
# input: list
# steps:
  # Print list to screen 
# output: list

def print_list(list)
  puts "_-" *25 + "\n\n"
  puts "Here is your Grocery List: \n\n"
  list.each do |item, quantity|
    puts "\tItem: #{item}     \tAmount:  #{quantity}"
  end
  puts "_-" *25
end

#       DRIVER CODE       --------------------------------------------------

groceries = "carrots apples cereal pizza"

my_grocery_list = create_list(groceries)
#  Add Items
add_item(my_grocery_list, "Lemonade", 2)
add_item(my_grocery_list, "Tomatoes", 3)
add_item(my_grocery_list, "Onions", 1)
add_item(my_grocery_list, "Ice Cream", 4)
# Remove Items
remove_item(my_grocery_list, "Lemonade") 
# Update Items
update_quantity(my_grocery_list, "Ice Cream", 1)
# Print List
print_list(my_grocery_list)

#            Reflection   --------------------------\
=begin
What did you learn about pseudocode from working on this challenge?
  I learned that I need to work on it, I have a bad habbit of skipping 
  the pseudo and going straight to the code so I didn't really 
  understand what I was doing during this part.
What are the tradeoffs of using arrays and hashes for this challenge?
  Because the list required two associated variables, items and 
  quantity, it seemed better to use a hash, but in some cases when 
  iterating through and filling the hash we needed an array to cycle 
  throught the data and load it into the hash one at a time. 
What does a method return?
  A method will return the last line in the block, 
  example: remove_item will return the updated list because 
  list is the last line. 
What kind of things can you pass into methods as arguments?
  Variables can be passed into methods as arguments, strings 
  integers boolean, along with default variables, 
  quantity = 1, depending 
How can you pass information between methods?
  We can pass info(variables) between methods using global 
  variables to point to the data then, in the case of this 
  challenge, we can pass a hash back and forth updating it when 
  we want and return thosse values. 
What concepts were solidified in this challenge, and what concepts are still confusing?
  For the most part I think I have an OK understanding of what is going 
  on in this challenge, pseudocode is still difficult because I usually 
  skip it and go straight to the code by John Gill, the TA this session, 
  really stressed the importance of good pseudo so I will definitely be 
  practicing that.  
  
end