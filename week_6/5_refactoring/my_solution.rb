# U2.W6: Refactoring for Code Readability


# I worked on this challenge with: Molly Huerster.


# Original Solution
=begin
class CreditCard
	def initialize(card_digits)
		raise ArgumentError.new('Must be a 16 digit number.') unless card_digits.to_s.length == 16
		@card_digits = card_digits
		arrTest = []
		arrTestOdd = []
		arrTestEven = []
		nums_sum_total = 0
	end

	def nums_double
		arrTest = @card_digits.to_s.split("").map{|x| x.to_i}
		arrTestOdd = arrTest.select.each_with_index{ |str, i| i.odd? }
		arrTestOdd = arrTestOdd.map{|i| i*2}
		arrTestOdd
	end
	def nums_single_even
		arrTest = @card_digits.to_s.split("").map{|x| x.to_i}
		arrTestEven = arrTest.select.each_with_index{ |str, i| i.even? }
		arrTestEven = arrTestEven.map{|i| i}
		arrTestEven
	end


	def nums_sum
		y = []
		arrOddSum = 0
		arrEvenSum = 0
		y = nums_double.map do |x| 
			if x.to_s.length > 1
				x.to_s.split("").map{|x| x.to_i}.flatten
			else
				x
			end
		end
		arrOddSum = y.flatten.inject{|sum, x| sum + x}
		arrEvenSum = nums_single_even.inject{|sum, x| sum + x}
		nums_sum_total = arrOddSum + arrEvenSum
		nums_sum_total
	end

	def check_card
		return false unless nums_sum % 10 == 0
	end
end
=end



# Refactored Solution

class CreditCard
	def initialize(card_digits)
		raise ArgumentError.new('Must be a 16 digit number.') unless card_digits.to_s.length == 16
		@card_digits = card_digits
		# Deleted three lines creating arrays stored as local variables, which would
		# not be accessible outside the method
		# arrTest = []
		# arrTestOdd = []
		# arrTestEven = []
		# nums_sum_total = 0
	end
# Collapsed the three following methods into check_card; don't need multiple methods;
# have redundancy in variable creation and modification within and across methods.
# Made variables more descriptive.

=begin
	def nums_double
		arrTest = @card_digits.to_s.split("").map{|x| x.to_i}
		arrTestOdd = arrTest.select.each_with_index{ |str, i| i.odd? }
		arrTestOdd = arrTestOdd.map{|i| i*2}
		arrTestOdd
	end
	def nums_single_even
		arrTest = @card_digits.to_s.split("").map{|x| x.to_i}
		arrTestEven = arrTest.select.each_with_index{ |str, i| i.even? }
		arrTestEven = arrTestEven.map{|i| i}
		arrTestEven
	end


	def nums_sum
		y = []
		arrOddSum = 0
		arrEvenSum = 0
		y = nums_double.map do |x| 
			if x.to_s.length > 1
				x.to_s.split("").map{|x| x.to_i}.flatten
			else
				x
			end
		end
		arrOddSum = y.flatten.inject{|sum, x| sum + x}
		arrEvenSum = nums_single_even.inject{|sum, x| sum + x}
		nums_sum_total = arrOddSum + arrEvenSum
		nums_sum_total
	end
=end
	def check_card
	  number_array = @card_digits.to_s.split("").map(&:to_i)
	  test_numbers = []
	  number_array.each_with_index do |digit, index|
	    if index % 2 == 0 
          test_numbers << (digit * 2).to_s.split("").map(&:to_i)
	    else 
	      test_numbers << digit
	    end 
    end
		sum = test_numbers.flatten.inject(0){ |total, index| total += index }
		sum % 10 == 0 ? true : false 
	end
end

# DRIVER TESTS GO BELOW THIS LINE

puts "Tests below:"

def assert 
  unless yield
    raise "test failed"
  else
    puts "passed"
  end
end

assert do
  card = CreditCard.new(4408041234567893)
  card.check_card == true
end

assert do    
  card = CreditCard.new(4408041234567892)
  card.check_card == false
end



# Reflection 
=begin

* What parts of your strategy worked? What problems did you face?    
	Most of our refactoring worked right off the bat. We needed to add back in/retain the original
	flattening of the array but I think that was our biggest challenge. And then the fact that our
	driver code needed to be in assert format (which we refactored at the end.)

* What questions did you have while coding? What resources did you find to help you answer them?  
	Syntax questions primarily - with both the Ternary as well as the assert functions.

* What concepts are you having trouble with, or did you just figure something out? If so, what?  
	Not sure that I'm having trouble with much of anything vis-a-vis this challenge. HUGE kudos
	to Molly for helping get me sorted out on driver code. The bane of my existance has been 
	banished (I think - need to try it a couple times solo to confirm.)

* Did you learn any new skills or tricks?
	The driver code trick Molly taught me made me want to weep with joy.

* How confident are you with each of the Learning Competencies? 
	Explain what code is doing - solid. Refactor - also solid.

* Which parts of the challenge did you enjoy?
	Pairing with Molly made the refactoring both fun and a breeze. It was also interesting to look
	at cohortmates' code to find one to refactor.

* Which parts of the challenge did you find tedious?
	None really - it was a fairly quick challenge and I like refactoring.
	
	
=end
