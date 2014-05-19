# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?  
	# Any number of varying value
# What is the output? (i.e. What should the code return?)
	# That number with appropriate comma separator(s)
# What are the steps needed to solve the problem?
	# Figure out how to split up number to insert comma(s)
	# Figure out how to insert comma (which is a string obj)
	# Figure out how to re-join into a "number" w/commas

# 2. Initial Solution

	def separate_comma(random_num)
		random_num.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
	end

		# First take number and turn it into a string (since commas are strings and you need 
		# to have like objects to join together) Then I reversed it because grouping
		# happens left to right and in order to get 1,000 and not 100,0 as my final output
		# I needed to be able to start my grouping from the final character/digit not the
		# first. Then I went and turned those characters into an array (I did this because 
		# slice seemed like only way to break chars up into groups of 3 - and it seems like 
		# slicing an array was how you could slice chunks of a specific size like that. If 
		# you can slice by string and grab chunks in a way similar to what I've done here 
		# then the syntax is not something I was able to figure out. I could figure out 
		# how to grab individual characters or an individual set of "x number" of 
		# characters but not repeated splits of 3 characters each.) Then I needed to put 
		# it together again with commas in between the chunks (of 3 characters each.) 
		# To do this I used the map function which takes and runs a method of join on the 
		# array using a comma as the joiner. Finally I reversed the string back to its 
		# original order for use in final output. 

	#puts random_num #(used this for testing/checking output in irb - as stand alone code)

	separate_comma (1000)
	separate_comma (99)
	separate_comma (82543902)
	separate_comma (384)



	
# 3. Refactored Solution

# I think I refactored as I went... because I was having trouble doing anything but stringing 
# commands together - was challenged by trying to make it work with "longhand" code. Which is a
# problem and as soon as I wrap up my job this next week I'll be doing some deep dives into
# a variety of things and working through a bunch of online tutorials to get my feet under
# me more solidly than I feel they are now. It's lucky and yet unfortunate that my ability
# to string methods together works, at times, as well as it does. And while I'd like to 
# think it's actually an inherent understanding on my part I'm too pragmatic to believe that.

# Bottom line - am sure it can be tidied - just not sure what to do to tidy it.



# 4. Reflection 
# 
=begin
	
* What parts of your strategy worked? What problems did you face?    
	My logic was solid. Finding the right combination of methods to make it work was hard.
	Think the biggest challenge was finding/understanding slice and that I needed to do it
	on an array. Then trying to put the array together with commas. Still not convinced my 
	understanding of that is correct but it seems to 	have worked from a code execution 
	standpoint.

* What questions did you have while coding? What resources did you find to help you answer them?  
	How to chunk by 3s (i.e. slice) and how to join the array back together with commas.

* What concepts are you having trouble with, or did you just figure something out? If so, what?  
	OMG I think I'm still completely confused on mapping... (a.k.a. .map or #map - least I think so) 
	my syntax of .map(&:join) is one that I found when trying to figure out why my .join(",")
	wasn't working. I think I understand what I'm doing what that small bit of code except
	then I think I don't but then I think I do... (it was/is exhausting to be this confused :P)

* Did you learn any new skills or tricks?
	How to refactor my Googling :P
	
* How confident are you with each of the Learning Competencies? 
	Would say I have medium confidence. Like "C to C minus" level. At least I do at this point.
	Ask me again tomorrow and I may feel differently. (Benefits of fire hose blasting your brain.)

* Which parts of the challenge did you enjoy?
	That my overall logic was right/good from the get go.

* Which parts of the challenge did you find tedious?
	Trying to figure out the syntax for joining the array together. Cuz really, .join(",") seems
	like a perfectly good method to me all by itself. (Sigh.)
	
=end



 