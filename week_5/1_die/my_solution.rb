# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:  Sending any number >=1 in initialize. @sides as input in sides. Randomizer in roll. 
# Output: Accurate # of sides in sides; random number in roll.
# Steps: Create a new class (Die); set it so that an error message is triggered if input value
# is less than 1; assign the input value to be the # of sides on the "die"; return a random #
# as the result of (virtually) rolling the die - the number should be between 1 and the number
# of sides.


# 3. Initial Solution

class Die
  def initialize(sides)
    raise ArgumentError.new("Please select a number greater than or equal to 1.") if sides < 1
  	@sides = sides
  end
  
  def sides
  	 @sides
  end
  
  def roll
    rand(1..@sides)
  end
end



# 4. Refactored Solution
# One day... I swear!





# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(189)
puts die.sides # should return 189
puts die.roll # should return a # b/w 1 & 189


die = Die.new(6)
puts die.sides  # should return 6
puts die.roll # should return a # b/w 1 & 6 (or )
puts die.sides > 1 # should be true
puts die.sides == 6 # should be true
puts die.roll < 7 # should be true


die = Die.new(-75)  # should throw ArgumentError and stop process
puts die.sides
puts die.roll



# 5. Reflection 

=begin
	
* What parts of your strategy worked? What problems did you face?    
	It was a fairly straightforward challenge - it was writing the tests that I struggled with.

* What questions did you have while coding? What resources did you find to help you answer them?  
	Test code. All the work while crying - test code.

* What concepts are you having trouble with, or did you just figure something out? If so, what?  
	Writing tests. It's counter-intuitive to me at this point. And frustrating. But next week I
	get to focus solely on code - so perhaps it will begin to make more sense to me when I have
	more time to devote to it.

* Did you learn any new skills or tricks?
	Probably but I'm having extra crispy brain this week - so I'm not able to immediately say, 
	"Oh, I learned 'X' this week."

* How confident are you with each of the Learning Competencies? 
	Break down problem - decently solid.  Implement a basic Ruby class - solid, know when to use
	instance vars - okay-ish. 

* Which parts of the challenge did you enjoy?
	Learning more about classes.

* Which parts of the challenge did you find tedious?
	Trying to write test code. Swear to dog - it'll be the death of me. :P




=end







