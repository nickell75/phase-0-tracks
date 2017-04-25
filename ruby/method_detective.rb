# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# .swapcase, changes uppercase to lowercase and vice versa, .swapcase! for str or nil
 "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

# .insert(), insert a character at a given index
 "zom".insert(2, 'o')
# => “zoom”
# center(width), centers a string, if width is greater than str it will center the str and add padding
 "enhance".center(15)
# => "    enhance    "
 # .upcase, makes all characters uppercase 
 "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

# .concat, add a string to a string, can also use <<
 "the usual".concat(" suspects")
 #=> "the usual suspects"

# .prepend, places a string in front of the current string
 " suspects".prepend("the usual")
# => "the usual suspects"

# .chop, returns str with the last character removed
 "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

# [1..-1], index the str and take out the character at 0
 "The mystery of the missing first letter".[1..-1]
# => "he mystery of the missing first letter"

# split by whitespaces and .gsub with single space
 "Elementary,    my   dear        Watson!".gsub(/\s+/, " ") 
# => "Elementary, my dear Watson!"

# .ord to return the integer ordinal of a single stirng, .gsub for larger strings
 "z".ord
 "zadgooks".gsub(/./){|s|s.ord.to_s + ' '} # =>"122 97 100 103 111 111 107 115"
# => 122 

# (What is the significance of the number 122 in relation to the character z?)
	#The ordinal number returned is the order of the character in the ASCII table, a = 97, z = 122 

# .count(), count the number of letters and return an integer
 "How many times does the letter 'a' appear in this string?".count 'a'
# => 4