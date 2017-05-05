class TodoList

  def initialize(item_array)
    @list = item_array 
  end

  def get_items
    @list 
  end 

  def add_item(new_item)
    @list << new_item
    @list 
  end

  def delete_item(item)
    @list.delete(item)
    @list 
  end

  def get_item(x)
    @list[x] 
  end
end

# ---DRIVER CODE-------------------------------------

# new_list = TodoList.new
# p new_list
# p new_list.get_items(new_list, "mop the floor", "do the dishes") 
# p new_list.add_item(new_list, "sweep the floor") 
# p new_list.delete_item(new_list, "do the dishes")
# p new_list.retrieve_item(new_list, 1)