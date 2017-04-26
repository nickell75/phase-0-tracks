=begin
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


def fib(length)
	arr = [0, 1]
	for i in 0...length-2
		arr.push(arr[i] + arr[i+1]) 		
	end	
	return arr.last
end

p fib(100)
=end