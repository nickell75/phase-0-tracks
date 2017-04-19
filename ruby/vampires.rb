puts "How many employees will be processed today?"
	process = gets.chomp.to_i
	count = 0

while count < process

puts"What is your Name?"
emp_name = gets.chomp
	#Check Name
	if emp_name == "Drake Cula" "Tu Fang"
		emp_name = false
	else
		emp_name = true
	end

puts"How old are you?" 
age = gets.chomp.to_i
puts"What year were you born?"
year = gets.chomp.to_i
	#Compare year with age 
	correct_age = (2017 - year)
		if age == correct_age
			age = true
		else
			age = false
		end

puts"Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"
garlic_bread = gets.chomp
	#Garlic bread, Yes or No
	if garlic_bread == "y"
		garlic_bread = true
	else
		garlic_bread = false
	end

puts"Would you like to enroll in the company’s health insurance?(y/n)"
insurance = gets.chomp
	#Check Insurance
	if insurance == "y"
		insurance = true
	else
		insurance = false
	end

#Check for allergies, Until Loop

while true
	puts "Do you have any allergies?"
	allergies = gets.chomp
	if allergies == "done"
		break
	elsif allergies == "sunshine"
		puts "Probably a Vampire."
		break	
	end
	
end 
	puts "#{allergies}"

#If age right, and willing to eat garlic bread or sign up for insurance
if age && (garlic_bread or insurance)
	puts "Probably not a Vampire."

#If age wrong, and hates garlic bread or waives insurance
elsif !age && !(garlic_bread or insurance)
	puts "Probably a Vampire!"

#If age wrong, hates garlic bread, and doesn’t want insurance
elsif !age && !garlic_bread && !insurance
	puts "Almost certainly a Vampire!!"

#anyone going by the name of “Drake Cula” or “Tu Fang"
elsif (age && garlic_bread && insurance) && !emp_name
	puts "Definitely a Vampire!"

else	
	puts "Results Inconclusive."
end
	
#End while loop
count += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
	
	
	
	
