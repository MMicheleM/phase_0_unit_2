# U2.W5: Virus Predictor

# I worked on this challenge with: Anthony Edwards Jr.

# EXPLANATION OF require_relative
#
=begin

require_relative 'state_data' # needs local file state_data in order to execute
# state_data is a hash that contains 50 states. Inside each state key contains a nested hash of key values pairs.

class VirusPredictor
#  assigning the values of the parameter to a local instance. 
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
#  calls 2 private methods predicted_deaths and speed_of_spread
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
  # Sets the methods below it to private so that they cannot be accessed externally 
  # If we were to set virus_effect to private we would get and error messages as the object is trying to call virus_effects
  # we would have zero access to the methods. 
  
  
# a method that calculates the estimated number_of_deaths based of a formula that pivots off of population_density
  def predicted_deaths(population_density, population, state)
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

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# a method that calculates the estimated rate of spread based of a formula that pivots off of population_density
  def speed_of_spread(population_density, state) #in months
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

=end 

#=======================================================================

# REFACTORED CODE

require_relative 'state_data' # needs local file state_data in order to execute

class VirusPredictor
#  assigning the values of the parameter to a local instance. 
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  
  #def virus_effects  #HINT: What is the SCOPE of instance variables?
   # predicted_deaths(@population_density, @population, @state)
  #end

#private
def predicted_deaths(population_density, population, state)
    speed = 0.0
    
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2
    else 
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end

    puts "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |key, value|
  state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population], STATE_DATA[key][:region], STATE_DATA[key][:regional_spread]) 
  state.predicted_deaths(STATE_DATA[key][:population_density], STATE_DATA[key][:population], key)
end


=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects
=end

