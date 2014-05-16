# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
	# Input is an array of numbers 


# What is the output? (i.e. What should the code return?)
	# A letter grade (A-F)

# What are the steps needed to solve the problem?
	# Define the method get_grade
	# Take average of scores passed to get_grade
	# Assign average the corresponding letter grade

# 2. Initial Solution
	def get_grade(array)
		sum = 0
		grade = array.inject{|sum, i| sum + i}.to_f / array.size

	case grade
		when 90..100 then "A" 
		when 80..89 then "B"
		when 70..79 then "C"
		when 60..69 then "D"
		else "F"
	end
	end



# 3. Refactored Solution
#  Don't know of a way to refactor. :(


# 4. Reflection 
# * What parts of your strategy worked? What problems did you face?    
#  Case statement worked nicely! I had it outside of my method to begin with (sigh.)

# * What questions did you have while coding? What resources did you find to help you answer them?  
#  WhoTF am I kidding?! I can't do this! WTF is happening, why can't I remember any Ruby. Will
#  this ever end? 	

# * What concepts are you having trouble with, or did you just figure something out? If so, what?  
#  Still just sloppy with my syntax/memory of. More practice should help. Figured out breaking for
#  vegan key lime pie and tea really helps!

# * Did you learn any new skills or tricks?
#  How to smack my inner critic down. Oh wait, I had that one figured already. I did learn inject.

# * How confident are you with each of the Learning Competencies? 
#  Using tests to guid dev - strong. Break down problems - strong. Find and use - decent. Methods - ok-ish.

# * Which parts of the challenge did you enjoy?
#  Getting it to work. (Not to sound like a freakin' broken record.)

# * Which parts of the challenge did you find tedious?
#  Not being able to figure out what I was doing wrong. 
#