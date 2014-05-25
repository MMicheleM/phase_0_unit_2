# U2.W5: Class Warfare, Validate a Credit Card Number


## I worked on this challenge with: Max Diener

# 2. Pseudocode

# Input: Create a class credit_card; initialize method that takes a 16 digit number; 
# Output: Error if number is not 16 digits; T or F based on valid cc number
# Steps: Initialize method; define check_card method; 


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(numbers)
    @numbers = numbers.to_s
    raise ArgumentError.new("Please enter a 16 digit number.") unless @numbers.length == 16
  end
  def check_card
    num_array = @numbers.split("").map(&:to_i)
    evens_array = []
    odds_array = []
    (0..15).step(2) {|x| evens_array << num_array[x]*2}
    (1..15).step(2) {|x| odds_array << num_array[x]}
    evens_array = evens_array.join.split("").map!(&:to_i)
    sum = 0
    (evens_array + odds_array).each {|x| sum += x}
    if sum % 10 == 0
        return true
    else 
        return false 
    end
  end    
end



# 4. Refactored Solution
	# No refactoring done. We recognized that there could be but we were stumped by how to
	# roll the code up.





# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
=begin
	
* What parts of your strategy worked? What problems did you face?    
	The general plan of action was sound - it was getting the syntax sorted out that proved to
	be our challenge. 

* What questions did you have while coding? What resources did you find to help you answer them?  
	How to select every other entry from an array to double - Max had come across Step and it
	proved to be perfect for that.  How to split the double digit doubled numbers. Google was
	our friend.

* What concepts are you having trouble with, or did you just figure something out? If so, what?  
	I'm still challenged by writing my own driver tests - but that wasn't a part of this
	challenge. (More just something I'm keenly aware of.) And my general knowledge - while
	likely on par for where it should be - is, at times, frustrating. Mostly that's just
	me hating the fact I don't just know/retain everything immediately. 

* Did you learn any new skills or tricks?
	The use of Step was cool.

* How confident are you with each of the Learning Competencies? 
	Iterate - getting stronger all the time; concept is stronger than my execution.
	Manipulate - ditto.
	Decompose problems - solid.
	Find built-in Ruby methodologies - solid in how to, but would say still a little challenged 
	in that I often don't know what I'm looking for and so am more blind, dumb luck-ing my
	way across new methods that I'm incorporating.

* Which parts of the challenge did you enjoy?
	Working with Max was great - he's a phenomenal pair!  Also really liked figuring out how
	to double every other item.

* Which parts of the challenge did you find tedious?
	As always, my lack of knowledge.

= end