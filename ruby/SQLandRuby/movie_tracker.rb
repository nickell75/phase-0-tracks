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
db.execute(create_table_cmd)
#db.execute("INSERT INTO movies (title, rating, comments) VALUES('Title', 'Rating', 'Comments')")
def add_movie(db, title, rating, comments)
	db.execute("INSERT INTO movies(title, rating, comments) VALUES(?, ?, ?)", [title, rating, comments])
end

		puts "What movie would you like to add?"
			title = gets.chomp
		puts "Give your movie a rating(1 - 10)"
			rating = gets.chomp.to_i
		puts "Would you like to add a review?(Enter N/A if no)"
			comments = gets.chomp

movie = db.execute("SELECT * FROM movies")
movie.each do |mov|
	puts "#{title} - #{rating} - #{comments}"
end
