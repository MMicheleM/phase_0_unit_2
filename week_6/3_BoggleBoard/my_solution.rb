# U2.W6: Create a BoggleBoard Class


# I worked on this challenge with: Alex White.


# 2. Pseudocode
	# We didn't pseudocode on this one actually... in following the
	# challenge's releases we somehow overlooked this pieces.

	# In reviewing this challenge by myself I would say that the pseudocode would be:
		# create a Boggle Board class
		# create a way for word creation
		# create a way to look at/interact with all the rows
		# create a way to look at/interact with all the columns
		# review the rows and columns to see if there are actual words in them
		# make sure there is a way to access a specific space/letter on the board
		# be sure I've written tests


# 3. Initial Solution
class BoggleBoard
 	attr_reader :grid   # making it readable outside class (for testing in this case)

	def initialize(grid) # new objects of class BB will be created by passing a grid to init method
		@grid = grid  # usual init assignment of instance to local/self
	end

	def create_word(*coordinates)  # splat (thank you Alex for the reminder!) to allow for variable length of input
    	 word = []   # thought splat immediately converted to an array... could I use @word = word?
    	 coordinates.each do |coordinate| # for all the coordinates passed in, for each of them take and
    	     x = coordinate[0]  # assign this as the row
			 y = coordinate[1]  # and this as the column
			 word << @grid[x][y] # take the letter found at the coordinate and add to end of array
	 	end
	 	word.join("")  # put it all together into a single word
  	end
    
  	def get_row(row) # create method for looking at/interacting with entire row of board
  		@grid[row]
  	end

  	def get_col(col) # ditto but for columns
  		@grid.collect{ |row| row[col] }  # know have an idea of collect thanks to Alex. Creates new array by iterating
  	end									 # through - in this case all the rows of the grid

end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)


# 4. Refactored Solution
	# Sadly there isn't one.



# DRIVER TESTS GO BELOW THIS LINE

i = 0
while i < 4
p "Row #{i} is: #{boggle_board.get_row(i).join("")}"
p "Col #{i} is: #{boggle_board.get_col(i).join("")}"
i += 1
end

=begin
	"Row 0 is: brae" - real word - if you're in Scotland
	"Col 0 is: biet" - suspect it is - just not in English
	"Row 1 is: iodt"
	"Col 1 is: roca"
	"Row 2 is: eclr"
	"Col 2 is: adlk"
	"Row 3 is: take" - real word
	"Col 3 is: etre" - real word in French with addition of accent mark (circumflex)
=end


	def assert
		if yield
			puts "Passes assert"
		else
			puts "Fails assert"
		end
	end


# create driver test code to retrieve a value at a coordinate here:
	assert { boggle_board.grid[3][2] == "k" }

# implement tests for each of the methods here:
	assert { boggle_board.create_word([1,2],[1,1],[2,1],[3,2]) == "dock" } # should be true/pass
	assert { boggle_board.get_row(0) == ["b", "r", "a", "e"] }    # should be true/pass
	assert { boggle_board.get_col(3) == ["e", "t", "r", "e"] }    # should be true/pass



# 5. Reflection 
=begin

* What parts of your strategy worked? What problems did you face?    
	Alex and I stumbled around a bit with this one but he had some great thoughts about
	our direction and he led much of the code development. We didn't get it to a full
	completion point together so the strategy I employed on my own was primarily finishing
	implementing what we had begun.

* What questions did you have while coding? What resources did you find to help you answer them?  
	Wondering how to handle coordinates but again, Alex led the charge on this front.

* What concepts are you having trouble with, or did you just figure something out? If so, what?  
	None really... the driver test code was spelled out (what to test for) in the challenge so
	my Achilles heel was less of a one for this exercise.

* Did you learn any new skills or tricks?
	The collect method that Alex introduced me to. Also a good refresher of splat.

* How confident are you with each of the Learning Competencies? 
	Create/access/traverse nested structures - medium confidence.
	Implement basic Ruby class & identify when to use instance vars - pretty good.

* Which parts of the challenge did you enjoy?
	Was nice working with someone on this - Alex did a lot of the heavy lifting and I just added
	some polish to the code after our pairing session.

* Which parts of the challenge did you find tedious?
	None really.

=end

