# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]



# Part 1: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# 		Define method assigning it 2 params - board and row and have it then
# 		return [index] (a.k.a. row # in this case) value 
# 		Finally create test(s) to see if can return values for a given row

# Initial Solution

def get_row(board, row)  # def method takes 2 params (board name & row #)
	board[row]  # grab from "X" board the "X" row (in this exercise it'll be boggle_board 
end				# and then an index value 0 to 3 depending on row you'd like to access)


# Refactored Solution
# 	Can't think of how to refactor... though I'm sure there's a way. Almost always is. :)


# DRIVER TESTS GO BELOW THIS LINE   
puts get_row(boggle_board, 1) == ["i", "o", "d", "t"]  # These should all return true
puts get_row(boggle_board, 3) == ["t", "a", "k", "e"]
puts get_row(boggle_board, 2) == ["e", "c", "l", "r"]
puts get_row(boggle_board, 0) == ["b", "r", "a", "e"]

# Reflection 

# Very straightforward exercise. I suspect there's a way to refactor where you can simply
# have it return boggle_board row X but my brain isn't coming up with syntax that might
# make it work (it seems too easy and yet like it's something that you should be able
# to do...)



#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a column number and returns all the elements in the column.  

# Pseudocode
# 		Define method assigning it values of board and column; 
# 		Create new array to assign the columns into rows; 
# 		associate values; return values for a given column

# Initial Solution

def get_column(board, column)  # def method takes 2 params (board name & col #)
	board.map{|x| x[column]}	# map the values of old array to a new one such that you can
end								# then call board and column number and get the col values


# Refactored Solution

# I know, thanks to Avi's post to the Rockets' board, that I should be able to refactor my
# get_column code to use .transpose - but I've been unable to get it to work.



# DRIVER TESTS GO BELOW THIS LINE

puts get_column(boggle_board, 0) == ["b", "i", "e", "t"]  # These should all return true
puts get_column(boggle_board, 3) == ["e", "t", "r", "e"]
puts get_column(boggle_board, 2) == ["a", "d", "l", "k"]
puts get_column(boggle_board, 1) == ["r", "o", "c", "a"]



# Reflection 

# Again a straightforward exercise - thoroughly enjoyable.   
