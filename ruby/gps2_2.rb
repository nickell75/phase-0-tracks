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
  list[item] = quantity
  list
end

# Method to print a list and make it look pretty
# input: list
# steps:
  # Print list to screen 
# output: list

def print_list(list)
  list.each do |item, quantity|
    puts "#{item}  - #{quantity}"
  end
end

#       DRIVER CODE--------------------------------------------------------

grociers = "carrots apples cereal pizza"

my_grociery_list = create_list(grociers)

#p my_grociery_list
remove_item(my_grociery_list, "carrots") 

update_quantity(my_grociery_list, "bread", 2)

add_item(my_grociery_list, "milk", 5)
#p my_grociery_list
print_list(my_grociery_list)