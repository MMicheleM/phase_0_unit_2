# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(labels)
  	raise ArgumentError.new("Please select at least one letter.") if labels.empty?  #kicks error if nothing in array
    @labels = labels
  end

  def sides
  	@sides = @labels.length  #takes length of array
  end

  def roll
  	@labels.sample  #takes random sample
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE




# returns # of sides given at initialization
die = Die.new(['G','R','A','D','U','A','T','I','O','N'])
puts die.sides == 10  # should be true
puts die.roll

# returns single letter if passed in
die = Die.new(['M'])
puts die.roll 

# produce exception error
die = Die.new([])
puts ArgumentError


# 5. Reflection 

=begin 
  * What parts of your strategy worked? What problems did you face?    
    Reusing most of old code and then using sample

  * What questions did you have while coding? What resources did you find to help you answer them?  
    Trying to figure out how to return all possible letters for a sufficiently large number.
    Was not able to figure that out.

  * What concepts are you having trouble with, or did you just figure something out? If so, what?  
    Writing driver test code... still the bane of my existence.

  * Did you learn any new skills or tricks?
    None that come to mind.

  * How confident are you with each of the Learning Competencies? 
    Pseudocode - pretty strong I think. 
    Implement basic Ruby class & ID use of instance vars - smooshy. But mostly good smooshy.
    Various bits (loops, methods, etc.) - fairly solid in what I've used.
    Find/use built-in Ruby methods - pretty good.

  * Which parts of the challenge did you enjoy?
    The whole thing was good - felt like it continued to build on knowledge.

  * Which parts of the challenge did you find tedious?
    Driver code and my figuring it out. Also not being able to figure out how to return all
    possible letters for a sufficiently large number was frustrating.

=end