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
def add_movie(db, title, rating, comments)
	db.execute("INSERT INTO movies(title, rating, comments) VALUES(?, ?, ?)", [title, rating, comments])	
end

def update_movie
#UPDATE users
#SET  (field1, field2, field3)
#   = ('value1', 'value2', 'value3') 
#WHERE some_condition ;
end

def top_five(db)
 #db.execute("SELECT * FROM movies WHERE rating = 10")
 puts "\t -- Top Five -- "
 puts "  --Title--Rating--Comments--"
	movie = db.execute("SELECT * FROM movies WHERE rating = 10")
	movie.each do |mov|
		puts "  -  #{mov['title']}  -  #{mov['rating']}  -  #{mov['comments']}"
	end
end

def bottom_five(db)
	puts "\t -- Worst Five -- "
 	puts "  --Title--Rating--Comments--"
	movie = db.execute("SELECT * FROM movies WHERE rating = 1")
	movie.each do |mov|
		puts "  -  #{mov['title']}  -  #{mov['rating']}  -  #{mov['comments']}"
	end
end

def random_movie(db)
	puts "Random Movie Generator"
	random = db.execute("SELECT title, rating, comments FROM movies ORDER BY RANDOM() LIMIT 1")
	random.each do |mov|
		puts "#{mov['title']} -  #{mov['rating']}  -  #{mov['comments']}"
	end
end

def sort_list(db)
	#db.execute("SELECT * FROM movies ORDER BY rating ASC")
end

def print_table(db, title, rating, comments)
	puts "  --Title--Rating--Comments--"
	db.execute("SELECT printf('%s-%.2d-%.4d', title, rating, comments) FROM movies ORDER By rating ASC")

	#movie = db.execute("SELECT * FROM movies ORDER BY rating ASC")
	#movie.each do |mov|
	#	puts "  -  #{mov['title']}  \t-  #{mov['rating']}  -  #{mov['comments']}"
	#end
end

###____________________Driver code_________________________

		puts "What movie would you like to add?"
			title = gets.chomp
		puts "Give your movie a rating(1 - 10)"
			rating = gets.chomp.to_i
		puts "Would you like to add a review?(Enter N/A if no)"
			comments = gets.chomp
add_movie(db, title, rating, comments)
sort_list(db)# Not Working 
#top_five(db) - Works fine!!
#bottom_five(db) - works fine!
print_table(db, title, rating, comments)
random_movie(db)

=begin
print "What would you like to do: "
	puts "1. Add a movie?"
	puts "2. Update a Comment or Rating?"
	puts "3. Checkout Top Five?"
	puts "4. Checkout Worst Five?"
	puts "5. Find a movie to watch?"
	puts ". Or, Just checkout you list of movies?"
	puts "Please Enter a number from above - "
		input = gets.chomp.to_i
		if input = 1
			add_movie
		elsif input = 2
			update_movie
		elsif input = 3
		
		elsif input = 4
		
		elsif input = 5
		
		elsif input = 6
		
		else
			puts"Have A Nice Day!"
		end
	add_movie
=end