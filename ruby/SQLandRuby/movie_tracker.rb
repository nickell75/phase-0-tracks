###___________________PsuedoCode_____________
=begin
	Movie Tracker
		store all movies user has seen
		all user to add more movies to list of current movies
		allow rating of movies scale of 1 - 10
		allow comments of movies - limited amount of space
		show list of top five favorite/recommended movies
		show list of top five worst movies
		random movie picker 	
=end

#require 'movie.db'
#require 'faker'

###________Database_____________________________________________
require 'sqlite3'

db = SQLite3::Database.new("movies.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS movies(
		id INTEGER PRIMARY KEY,
		title VARCHAR(255), 
		rating INT,
		comments VARCHAR(255)
	)
SQL
##_____________________Business Logic____________________


	db.execute(create_table_cmd)
#____Auto Populate table
	db.execute("INSERT INTO movies(title, rating, comments) VALUES('Terminator', 9, 'Oldy, but a goody')")
#____Add movies to the table	
	def add_movie(db, title, rating, comments)
		db.execute("INSERT INTO movies(title, rating, comments) VALUES(?, ?, ?)", [title, rating, comments])	
	end
#____Output the top five based on ratings
	def top_five(db)
	 puts "\t -- Top Five -- "
	 puts "  --Title--Rating--Comments--"
		movie = db.execute("SELECT * FROM movies WHERE rating = 10")
		movie.each do |mov|
			puts "  -  #{mov['title']}  -  #{mov['rating']}  -  #{mov['comments']}"
		end
	end
#____Output the bottom five based on ratings
	def bottom_five(db)
		puts "\t -- Worst Five -- "
	 	puts "  --Title--Rating--Comments--"
		movie = db.execute("SELECT * FROM movies WHERE rating = 1")
		movie.each do |mov|
			puts "  -  #{mov['title']}  -  #{mov['rating']}  -  #{mov['comments']}"
		end
	end
#____Output a random movie
	def random_movie(db)
		puts "\tRandom Movie Generator"
		puts "  --Title--Rating--Comments--"
		random = db.execute("SELECT title, rating, comments FROM movies ORDER BY RANDOM() LIMIT 1")
		random.each do |mov|
			puts "  -  #{mov['title']} -  #{mov['rating']}  -  #{mov['comments']}"
		end
	end
#____Output the entire movies database
	def print_table(db, title, rating, comments)
		puts "  - - Title - - Rating - - Comments--"
		movie = db.execute("SELECT * FROM movies ORDER BY rating ASC")
		movie.each do |mov|
			puts "  -  #{mov['title']} \t-  #{mov['rating']}  -  #{mov['comments']}"
		end
	end

###____________________Driver code_________________________
input = 0
while input != 6
	puts "What would you like to do: "
	puts "1. Add a movie?"
	puts "2. Checkout Top Five?"
	puts "3. Checkout Worst Five?"
	puts "4. Find a movie to watch?"
	puts "5. Or, Just checkout you list of movies?"
	puts "6. EXIT"
	puts "Please Enter a number from above - "
		input = gets.chomp.to_i
	
			if input == 1
				puts "What movie would you like to add?"
					title = gets.chomp
				puts "Give your movie a rating(1 - 10)"
					rating = gets.chomp.to_i
				puts "Would you like to add a review?(Enter N/A if no)"
					comments = gets.chomp
					add_movie(db, title, rating, comments)
			elsif input == 2
				top_five(db)
			elsif input == 3
				bottom_five(db)
			elsif input == 4
				random_movie(db)
			elsif input == 5
				print_table(db, title, rating, comments)
			else
				puts"Have A Nice Day!"
			end
end
