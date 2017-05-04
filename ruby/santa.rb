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
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.each do |x|
	x.about
end