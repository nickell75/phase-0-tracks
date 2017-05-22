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
#db.execute("INSERT INTO movies (title, rating, comments) VALUES('Title', 'Rating', 'Comments')")
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
		puts "#{mov['id']}  -  #{mov['title']}  -  #{mov['rating']}  -  #{mov['comments']}"
	end
end
def bottom_five
	#UPDATE users
#SET  (field1, field2, field3)
#   = ('value1', 'value2', 'value3') 
#WHERE some_condition ;
end
def random_movie
#	SELECT * FROM table WHERE id IN (SELECT id FROM table ORDER BY RANDOM() LIMIT x)
end
def sort_list(db)
	db.execute("SELECT * FROM movies ORDER BY rating ASC")
end
def print_table(db, title, rating, comments)
	puts "  --Title--Rating--Comments--"
	movie = db.execute("SELECT * FROM movies")
	movie.each do |mov|
		puts "#{mov['id']}  -  #{mov['title']}  -  #{mov['rating']}  -  #{mov['comments']}"
	end
end

###____________________Driver code_________________________
=begin
print "Enter your grade: "
grade = gets.chomp
case grade
when "A"
  puts 'Well done!'
when "B"
  puts 'Try harder!'
when "C"
  puts 'You need help!!!'
else
  puts "You just making it up!"
end
=end
		puts "What movie would you like to add?"
			title = gets.chomp
		puts "Give your movie a rating(1 - 10)"
			rating = gets.chomp.to_i
		puts "Would you like to add a review?(Enter N/A if no)"
			comments = gets.chomp
add_movie(db, title, rating, comments)
sort_list(db)
top_five(db)

print_table(db, title, rating, comments)

