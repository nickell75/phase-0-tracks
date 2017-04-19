puts "Which hamster would you like?"
ham_name = gets.chomp

puts "How loud would like it to be?"
vol_level = gets.chomp.to_i

puts "What fur color would you like?"
fur_color = gets.chomp

puts "is this hamster a good choice(yes/no)?"
adoption = gets.chomp

puts "Can you guess the age of this hamster?"
est_age = gets.chomp.to_i

if est_age > 0	
else
	est_age = nil	
end
puts"Summary:"
puts"Hamster: #{ham_name}"
puts"Volume Level: #{vol_level}"
puts"Fur Color: #{fur_color}"
puts"Good Candidate: #{adoption}"
puts"Estmated Age: #{est_age}"


