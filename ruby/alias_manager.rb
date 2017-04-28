=begin Create Fake Name
	-Main Method, Take real_name, send to swap_first_last
		-2nd method, swap_first_last, split real_name, .reverse!, .join send back fake_name to main method
		-3rd method, next vowel, in main method .each/.map through fake_name, if equal to vowel send to next_vowel
		-4th method, after next_vowel done, sent to next consat, do same as 3rd but with consonants 

=end

real_name = "James Bond".split(' ')
	
# Swap_first_last
def swap_first_last(real_name)
  real_name = real_name.split(' ')
  real_name.class
  
  real_name.reverse!
 
  last_first = real_name.join(' ')
  puts last_first
  return last_first
 
end

def test(some_thing)
  puts some_thing.reverse!
  return some_thing
end

def test2(some_else)
  some_else = some_else.upcase
  puts some_else
end








test2(test(swap_first_last("James Bond")) )