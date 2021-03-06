# __________________Virus Predictor________________

# I worked on this challenge [by myself, with: Cassandra].
# We spent [#] hours on this challenge. - 1hr

# EXPLANATION OF require_relative
# See Below
#
require_relative 'state_data'

class VirusPredictor

# Taking all the variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Passing variables to others methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  
private
# Calculate the predicted deaths

  def predicted_deaths
=begin 
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
  end
=end
    

case @population_density
  when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
  when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
  when @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
  when @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
  else number_of_deaths = (@population * 0.05).floor
  end

  print "#{@state} will lose #{number_of_deaths} people in this outbreak"
end

# Calculate speed of spread based on population density 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

              # DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

STATE_DATA.each_key do |state|
    each_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    each_state.virus_effects
end
#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
Two hash syntax where the string for the key and the nested hash used symbols for the key.

What does require_relative do? How is it different from require?
Require references modules that could be used for any thing 
Require_relative references files in the same repo, code usually seperated out for readability 

What are some ways to iterate through a hash?
Iteration can be done using .each or .each_key to reference the first key and pull data based on that key from the nested hash

When refactoring virus_effects, what stood out to you about the variables, if anything?
Didn't need to pass variables because they were instance variables 

What concept did you most solidify in this challenge?
More understanding of initialization. 

=end