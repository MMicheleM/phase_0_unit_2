# U2.W4: Homework Cheater!


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: array with values of title, person, date, thesis_statement  
# Output: sentence formed from those values
# Steps: create 3 test sets; create method for taking data and outputting "thesis"


# 3. Initial Solution

def template(title, person, date, thesis_statement)
	puts "#{title}, where #{person} said '#{thesis_statement}' in #{date.to_s}."
end



# 4. Refactored Solution

# Sorry, don't know of a way to refactor it. I also suspect I may have not
# fully understood the challenge as this seems too "simplistic" of an
# answer. But given that I tend to use too many words I actually take it
# as a good sign when I don't use that many when coding. :)


# 1. DRIVER TESTS GO BELOW THIS LINE

template("Wayne's World", "Garth", 1992, "Party time, excellent!")
template("Pitch Perfect", "Beca", 2012, "What? You've got juice pouches and Rocky!")
template("Sound of Music", "Maria", 1940, "Let's start at the very beginning...")


# 5. Reflection 
=begin 

* What parts of your strategy worked? What problems did you face?    
	My simple method worked nicely. Remembering how to call elements was a bit of 
	a syntax challenge that I had to figure out. I also didn't realize I could just 
	call all my test data sets the same thing... and spent some time trying to figure
	a way to iterate through them. Foolishly need to remember to try the simplest
	way first.

* What questions did you have while coding? What resources did you find to help you answer them?  
	What is this test code meant to look like? How to iterate through (trial and error.)

* What concepts are you having trouble with, or did you just figure something out? If so, what?  
	Remembering Ruby. It will (hopefully) come back with time/practice.

* Did you learn any new skills or tricks?
	That I could name 3 different data sets the same thing and it would execute

* How confident are you with each of the Learning Competencies? 
	Translate to driver code/solutions - low. Methods to take arguments - seemingly solid.
	If/Else methods, etc. - didn't really use 'em but theoretically pretty solid.
	Differentiate between and produce destructive and non-destructive methods - mixed.
	Think I understand the thoery not so sure about my ability to apply.

* Which parts of the challenge did you enjoy?
	Getting it to work.

* Which parts of the challenge did you find tedious?
	Getting my Ruby legs under me. Last week and this week have been hard and it's been a
	bit overwhelming at times when I feel like I've not been "getting" it.

=end
