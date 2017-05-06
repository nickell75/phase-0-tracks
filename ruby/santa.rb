class Santa
	# Refactor with attr_reader&accessor
	attr_reader :age, :ethnicity
	attr_accessor :gender
	def initialize(gender, ethnic, age = 0)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnic
		@age = age
		@reindeer_rainking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		
	end

	def about
		puts "Santa Info:"
		puts "\tGender: #{@gender}"
		puts "\tEthnicity: #{@ethnicity}"
		puts "\tAge: #{@age}"
		# Test output for Reindeer Ranking
		#puts "#{@reindeer_rainking}"

	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"		
	end	

	def celebrate_birthday
		@age += 1
		
	end

	def get_mad_at(index)
		reindeer = @reindeer_rainking[index]  
		puts reindeer
	end
=begin
	# GETTER Methods
	def age
		@age
	end
	def ethnicity
		@ethnicity
	end
	# SETTER Method
	def gender=(new_gender)
		@gender = new_gender
	end
=end
end
#----------------     Driver Code ---------------------
=begin
santa_con = Santa.new("Male", "White", 22)

            # Release 1

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])  
end
santas.each do |santa|
	santa.about
end

            # Release 2 & 3
santa_con.about
santa_con.celebrate_birthday
santa_con.gender = "Not Sure"
santa_con.get_mad_at(2)

santa_con.about
santa_con.celebrate_birthday
santa_con.gender = "Your Choice"
santa_con.get_mad_at(5)

santa_con.about
=end
                    # Release 4
santa_con = Santa.new("Gender","Ethnicity")
#santa_con.about
puts "How many random Santas do you want to create?:"
	x = gets.chomp.to_i
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
santas = []
#santa_con.about

while x > 0
	random_ages = rand(140)
	gender = example_genders.sample
	ethnicity = example_ethnicities.sample
	santas << Santa.new(gender, ethnicity, random_ages)
	x -=1
	santa_con.about
end
santas.each do |x|
	x.about
end
