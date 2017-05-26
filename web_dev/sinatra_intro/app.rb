# require gems
require 'sinatra'
#require 'reloader'
require 'sqlite3'

configure do
  enable :reloader
end
db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
#get '/' do
#  "#{params[:name]} is #{params[:age]} years old."
#end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end
#_____________Release 0__________________________
get '/contact' do
	"<a href='https://github.com/nickell75/phase-0-tracks/tree/master/web_dev/sinatra_intro'>Check it out!"
end

get '/great_job' do
  person = params[:person3]
  if person
  	"Good job, #{person}"
  else
  	"Good job!"
  end
end

get '/:num_1/:num_2' do
	num1 = params[:num_1]
	num2 = params[:num_2]
	answer = 0
	def add_two(num1, num2)
 		answer = num1 + num2
 		answer.to_s	
 	end
  	add_two(num1, num2)
  	"#{params[:num_1]} plus #{params[:num_2]} equals #{answer}"
end

#_____________Release 1__________________________
=begin
Is Sinatra the only web app library in Ruby? What are some others?

Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?

What is meant by the term web stack?

=end