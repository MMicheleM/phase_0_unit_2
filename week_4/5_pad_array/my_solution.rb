# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

=begin
	
# 1. Pseudocode

# What is the input?
	Variety of methods to modify an array. Need to be be able to both
	overwrite and not overwrite during array modification. Need to be
	able to not pad an array under "X condition" as well as adding to
	the end of an array, padding with a string, an object or with nil.

# What is the output? (i.e. What should the code return?)
	In most cases it should return a modified array. Exceptions would 
	be when it's not meant to pad an array.

# What are the steps needed to solve the problem?
	Run test code to see initial error message. Tackle the test code 
	one test at a time by creating method(s) to address the tests.

=end

# 2. Initial Solution


	class Array                         # uses existing Ruby class  
		def pad!(min_size, pad_value = nil)  #destructive (! = replace)
  			if self.length >= min_size  # for existing array >= desired array size 
  				return self				# use existing array
  			else						# otherwise until size requirement
	  			while self.length < min_size  # add to array with desired
  					self.push(pad_value) 	# padding value
  				end
  				self					#return final padded array
  			end	
  		end


		def pad(min_size, pad_value = nil) # non-destructive
			self.clone.pad!(min_size, pad_value) #make shallow copy of array 
			# (not its values) and objects referenced that can be modified 
			# without modifying original array. Duplicate drops obj ref
  		end	
  	end


# 3. Refactored Solution
	# Am sure there is something that could be done to refactor but I don't
	# know what that is. Maybe one day... Although I'm also realizing that
	# I'm treating Refactor as something you do to code once it is 
	# executing correctly. Perhaps I am approaching this wrong?


# 4. Reflection 