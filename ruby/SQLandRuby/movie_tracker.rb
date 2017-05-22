###___________________PsuedoCode_____________
=begin
	Movie Tracker
		store all movies user has seen
		all user to add more movies to list of current movies
		allow rating of movies scale of 1 - 10
		allow rating update/change
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
	);
SQL
##_____________________Business Logic____________________

	db.execute(create_table_cmd)

#____Auto Populate table
	db.execute("INSERT INTO movies(title, rating, comments) VALUES
		('Terminator', 9, 'Oldy, but a goody'), 
		('Ghost', 1, 'N/A'), 
		('The Blob', 1, 'A little before my time'), 
		('Cheers', 10, 'Not a movie, but its on Hulu'), 
		('Iron Man', 8, 'N/A'), 
		('Hulk', 1, 'Eric Bana isnt a superhero'), 
		('Thor', 1, 'N/A'), 
		('Ant Man', 1, 'Not bad for a comedian'), 
		('Logan', 1, 'Spoiler Alert'), 
		('Batman', 1, 'N/A')")

#____Add movies to the table	
	def add_movie(db, title, rating, comments)
		db.execute("INSERT INTO movies(title, rating, comments) VALUES(?, ?, ?)", [title, rating, comments])	
	end
#____Update movie rating
	def update_movie(db)		
		puts "  - - Title - - Rating - - Comments - - "
		movie = db.execute("SELECT * FROM movies")
		movie.each do |mov|
			printf " * %-13s| %-4s|  %-5s\n", "#{mov['title']}", "#{mov['rating']}", "#{mov['comments']}"
		end		
		puts"-"*60
		puts "Which Movie Rating would you like to change?"
			movie_update = gets.chomp
		puts "What would you like to change the rating to?"
			update = gets.chomp.to_i
		db.execute("UPDATE movies SET rating=? WHERE title=?", [update, movie_update])
	end
#____Output the top five based on ratings
	def top_five(db)
	 	puts "\t -- Top Five -- "
	 	puts "  - - Title - - Rating - - Comments - - "
		movie = db.execute("SELECT * FROM movies WHERE rating = 10 ORDER BY title ASC LIMIT 5")
		movie.each do |mov|
			printf " * %-13s| %-4s|  %-5s\n", "#{mov['title']}", "#{mov['rating']}", "#{mov['comments']}"
		end
		puts"-"*60
	end
#____Output the bottom five based on ratings
	def bottom_five(db)
		puts "\t -- Worst Five -- "
	 	puts "  - - Title - - Rating - - Comments - - "
		movie = db.execute("SELECT * FROM movies WHERE rating = 1 ORDER BY title ASC LIMIT 5")
		movie.each do |mov|
			printf " * %-13s| %-4s|  %-5s\n", "#{mov['title']}", "#{mov['rating']}", "#{mov['comments']}"
		end
		puts"-"*60
	end
#____Output a random movie
	def random_movie(db)
		puts "\tRandom Movie Generator"
		puts "  - - Title - - Rating - - Comments - - "
		random = db.execute("SELECT title, rating, comments FROM movies ORDER BY RANDOM() LIMIT 1")
		random.each do |mov|
			printf " * %-13s| %-4s|  %-5s\n", "#{mov['title']}", "#{mov['rating']}", "#{mov['comments']}"
		end
		puts"-"*60
	end
#____Output the entire movies database
	def print_table(db, title, rating, comments)
		puts "  - - Title - - Rating - - Comments--"
		movie = db.execute("SELECT * FROM movies ORDER BY rating ASC")
		movie.each do |mov|
			printf " * %-13s| %-4s|  %-5s\n", "#{mov['title']}", "#{mov['rating']}", "#{mov['comments']}"
		end
		puts"-"*60
	end

###____________________Driver code_________________________
input = 0
while input != 7
	puts "What would you like to do: "
	puts "1. Add a movie?"
	puts "2. Update a Rating?"
	puts "3. Checkout Top Five?"
	puts "4. Checkout Worst Five?"
	puts "5. Find a movie to watch?"
	puts "6. Or, Just checkout you list of movies?"
	puts "7. EXIT"
	printf "Please Enter a number from above - "
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
				update_movie(db)
			elsif input == 3
				top_five(db)
			elsif input == 4
				bottom_five(db)
			elsif input == 5
				random_movie(db)
			elsif input == 6
				print_table(db, title, rating, comments)
			else
				puts"Have A Nice Day!"
			end
	
end
db.execute("DROP TABLE movies")