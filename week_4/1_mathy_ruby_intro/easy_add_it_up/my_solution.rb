# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# For total:
# need 2 arrays (array_1 and array_2)
# need a method called total

# For the sentence_maker:
# need 2 arrays (first_sentence and second_sentence)
# need a method called sentence_maker


# What is the output? (i.e. What should the code return?)
# For total:
# total of array 2

# For sentence_maker:
# concatenated array that is grammatically correct sentence with 
# capitalized first word and period at the end.


# What are the steps needed to solve the problem?
# declare/define local methods
# pick right (global? pre-defined?) methods


# 2. Initial Solution


def total(array)
	sum = 0
	sum = array.inject {|sum, i| sum + i}
end


def sentence_maker(sentence)
	phrase = sentence.join(" ").capitalize + "."
end

# 3. Refactored Solution
# Don't know of a way to refactor the code. Believe the {|sume, i| sum +i} can be reduced - not sure how.
# Likely sentence syntax can also be refined.


# 4. Reflection 
#   * What parts of your strategy worked? What problems did you face?    
# 	In general my concepts were fine. My problem is in recallig Ruby syntax. It's currently killing me.

#   * What questions did you have while coding? What resources did you find to help you answer them?  
# 	The (built-in?) methods to sum (without extensitve iteration) and for adding strings; confirming that
#   capitalize was an available method.

#   * What concepts are you having trouble with, or did you just figure something out? If so, what?  
#    All of them. Need to go back and do some serious Ruby refreshing.

#   * Did you learn any new skills or tricks?
#    The .inject and .join were possibly known to me but if not are new tricks in my bag.

#   * How confident are you with each of the Learning Competencies? 
#   Tepid.

#   * Which parts of the challenge did you enjoy?
#   Getting it to work.

#   * Which parts of the challenge did you find tedious?
#   Trying to get back into the Ruby groove.
