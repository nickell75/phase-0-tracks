class Santa
	def initialize(gender, ethnic, age = 0)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnic
		@age = age
		#@reindeer_rainking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
			
	end
	def about
		puts "#{@gender}"
		puts "#{@ethnicity}"
		puts "#{@age}"
		puts "#{@reindeer_rainking}"
	end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"		
	end	
end

#----------------     Driver Code ---------------------

santa_con = Santa.new("Male", "white")


santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

santas.each do |x|
	x.about
end