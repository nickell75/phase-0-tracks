class Santa
	def initialize
		puts "Initializing Santa instance..."
	end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"		
	end	
end

#----------------     Driver Code ---------------------

santa_con = Santa.new

santa_con.speak

santa_con.eat_milk_and_cookies("Chocolate Chip")