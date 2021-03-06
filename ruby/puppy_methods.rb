=begin
class Puppy

  	def fetch(toy)
    	puts "I brought back the #{toy}!"
    	toy
  	end
  	def speak(x)
		x.times do 
			puts "Woof!"
		end
	end
	def roll_over
		puts "*roll over*"
	end
	def dog_years(human_years)
		dog_years = human_years * 7
		puts dog_years
	end
	def beg(food)
		puts "*begs for #{food}"
	end
	def initialize
		puts "Initializing new pupy"
	end
end

spot = Puppy.new

spot.fetch("ball")
spot.speak(4)
spot.roll_over
spot.dog_years(6)
spot.beg("pizza")
=end

class Bird
	def initialize
		puts "*wings flapping ominously*"
	end
	def tweet (x)
		x.times do
			puts"TWEET!"
		end
	end
	def repeat(phrase)
		puts "phrase"
	end
end

polly = Bird.new

polly.tweet(4)

polly.repeat("Polly wanna cracker!")

flock = []

50.times do 
  flock << Bird.new 
end

p flock 

flock.each do |bird_instance| 
  bird_instance.tweet(2)
  bird_instance.repeat("Hey, you!")
end 