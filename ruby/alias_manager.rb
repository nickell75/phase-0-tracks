=begin Create Fake Name
	-Main Method, Take real_name, send to swap_first_last
		-2nd method, swap_first_last, split real_name, .reverse!, .join send back fake_name to main method
		-3rd method, next vowel, in main method .each/.map through fake_name, if equal to vowel send to next_vowel
		-4th method, after next_vowel done, sent to next consat, do same as 3rd but with consonants 

=end

# Find next vowel
def next_vowel(letter)
  vowels = ("aeiou")
    i = vowels.index(letter)
      vowels[(i + 1) % vowels.length]
  end
# Find next consonant
def next_consonant(letter)
  consonants = ("bcdfghjklmnpqrstuvwxy") 
    i = consonants.index(letter)
      consonants[(i + 1) % consonants.length]
end
# Swap first name and last name
def swap_first_last(real_name)
  real_name = real_name.split(' ')
  real_name.class
  
  real_name.reverse!
 
  last_first = real_name.join(' ')
  puts last_first
  return last_first
end
    
def main_method(spy_name)
  spy_name.delete!" "
  spy_name.downcase!
  spy_name = spy_name.split('')
  spy_name.class
  
  spy_name.map! do |value|
    if value =~ /[aeiou]/
      next_vowel(value)
    else
      next_consonant(value)
    end
  end
  spy_name.join('')
end

p main_method(swap_first_last("James Bond"))