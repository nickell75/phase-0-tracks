=begin
##  Search
arr = [42, 89, 23, 1]

def search_arr(arr, num_value)
	count = 0
	arr.each do |elements|
		if num_value == elements			
			return count	
		
		end
		count += 1
	end
	return nil 
end

p search_arr(arr, 12)

## Fibonacci
def fib(length)
	arr = [0, 1]
	for i in 0...length-2
		arr.push(arr[i] + arr[i+1]) 		
	end	
	return arr.last
end

p fib(100)
=end

# Take in a value from array
#	-for loop - for each pair of items
#		- compare items, swap items if out of order

# Bubble Sort

unsorted = [4, 1, 28, 9, 15, 2]

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    for i in 0...n-1 do
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end
  return array
end

puts bubble_sort(unsorted)