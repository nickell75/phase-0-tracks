=begin Create Fake Name
	-Main Method, Take real_name, send to swap_first_last
		-2nd method, swap_first_last, split real_name, .reverse!, .join send back fake_name to main method
		-3rd method, next vowel, in main method .each/.map through fake_name, if equal to vowel send to next_vowel
		-4th method, after next_vowel done, sent to next consat, do same as 3rd but with consonants 

=end

# Find next vowel
def next_vowel(letters)
  vowels = ['a', 'e', 'i', 'o', 'u']
    letters = letters.downcase.split('')
    next_letters = letters.map do |str|
    	if vowels.include?(str)
    		vowels.rotate(1)[vowels.index(str)]
    	else
    		str
    	end
    end
    next_letters.join('')
end

# Find next consonant
def next_consonant(letters)
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'] 
    letters = letters.downcase.split('')
    next_letters = letters.map do |str|
    	if consonants.include?(str)
    	  	consonants.rotate(1)[consonants.index(str)]
    	else
    		str
    	end
	end
	next_letters.join('').capitalize!
end

# Swap first name and last name
def swap_first_last(real_name)
  real_name.split.reverse.join(' ')
end
    
# Driver Code
valid_input = false
agents = {}
real_name = ""
secret_name = ""

until valid_input
  puts "Please enter your real name to convert(Enter quit to quit): "
  real_name = gets.chomp.downcase
    if real_name == "quit"
       puts "Thank You!"
       valid_input = true
     else
      secret_name = swap_first_last(next_vowel(next_consonant(real_name)))
       puts "Your secret name is #{secret_name} "
    # Re-capitalize first and last name for both real name and secret name
       agents[real_name.split.map(&:capitalize).join(' ')] = secret_name.split.map(&:capitalize).join(' ')
      end
    end

# Output list of agents and aliases
agents.each do |real, fake|
  puts"#{real} is also known #{fake}"
end