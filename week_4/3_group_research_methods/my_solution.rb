# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}



	
	
# Person 1's solution (Puru)

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  	source.grep(/#{thing_to_find}/)
end

def my_hash_finding_method(source, thing_to_find)
  	matching = []
	source.each do |key, value|
		matching << key if value == thing_to_find
	end
	matching
end


=begin
	
# Identify and describe the ruby method you implemented. 
	On first method, I implemented grep method and used Regexp.
		* http://www.ruby-doc.org/core-2.1.1/Enumerable.html#method-i-grep
		* What grep does is it picks only the matching value from the array.
		* For example: (1..100).grep 38..44   #=> [38, 39, 40, 41, 42, 43, 44]

		* Regexp : /t/ will check if the given word matches letter "t"

 	On second method, I have used loop and push method;............................
 		* When passing both key and value of the hash given, this loops checkes each
 		  values if it is == to the number given, if it is, it pushes the corresponding
 		  key to the empty array I have initialized before the loop. 
=end


	

# Person 2 (Alex)

#INITIAL SOLUTION: 

# def my_array_modification_method (pet_wants, number)
# 	pet_wants.map! { |element|
# 		if (element.class == Fixnum)
# 			element += number 
# 		else 
# 			element
# 		end
# 	}
# 	pet_wants
# end

# i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2, ":(." ]
# my_array_modification_method(i_want_pets, 1) 



#REFACTORED SOLUTION

def my_array_modification_method (pet_wants, number)
	pet_wants.map! { |element| #iterate through each element in pet_wants
		if (element.class == Fixnum) #check if it is a number
			element += number #if it is add the value of number to it
		else 
			element  #if not do nothing
		end
	}
	pet_wants  #return the array
end

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2, ":(." ]
my_array_modification_method(i_want_pets, 1) 

#Input: hash, number of years
# Output: new hash with new ages
#my_hash_modification_method takes input of the old hash and the new number of years
#  FOR each pet in the hash
# 		add number of years to age

#  END FOR
#END FUNCTION

#INITIAL SOLUTION: 

def my_hash_modification_method(my_family_pets_ages, years_gone_by)
	my_family_pets_ages.each { |pets, ages| my_family_pets_ages[pets] = ages + years_gone_by }
end

# Identify and describe the ruby method you implemented. 
# 
#
#




	
# Person 3 (Michele)
def my_array_sorting_method(source)
	source.sort_by{|x| x.to_s}
end
 
def my_hash_sorting_method(source)
	source.sort_by{|key, value| value}
end


# Identify and describe the ruby method you implemented. 
#   For the array it's a sort with the conversion of elements of the array
#   to strings since the array is a mix of strings and numbers. Using sort_by
#   rather than sort seems to necessary given the mixed variables. 
#
#   For the hash it was again a sort_by with the "value" (age) being the value
#   to be sorted. Need to still figure out how to alphabetize names as my 
#   code does not return the list alphabetized when two ages match.



	
# Person 4


# Identify and describe the ruby method you implemented. 
# 
#
#
 

################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

#p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
#p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
#p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
#p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
puts my_array_sorting_method(i_want_pets)
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
puts my_hash_sorting_method(my_family_pets_ages)
# This may be false depending on how your method deals with ordering the animals with the same ages.
#p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
#p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# 
=begin

* What parts of your strategy worked? What problems did you face?    
	My code turned out to be correct even though the driver code would return false. I tore myself
	up trying to figure out what I had done wrong. Huge note to self that next time I need to be
	sure and put my "puts" down in the driver code - made ALL the difference. Sigh.

* What questions did you have while coding? What resources did you find to help you answer them?  
	WhyTF isn't this working?!? I googled 8 ways from Sunday trying to figure out what I was doing
	wrong with my sorting. Turns out nothing. So note to self is to ask someone to look at my code
	sooner. (I checked with Justin who had had the same array code to see if his tests were returning
	true. And then later the discovery that calling for output in the driver code shows true resutls.)

* What concepts are you having trouble with, or did you just figure something out? If so, what?  
	Trusting myself. I'm still a bit fuzzy on sort vs. sort_by as it would seem sort_by is intended for
	more complex datasets. And yet it seems like it was the right method for dealing with mixed
	variables. Requires more exploration on my part.

* Did you learn any new skills or tricks?
	Adding the "puts..." in the driver code. Don't think I'll forget that anytime soon.

* How confident are you with each of the Learning Competencies? 
	Find and use built-in methods - very solid. Iterate through data structures - solid I think. Explain - good.

* Which parts of the challenge did you enjoy?
	As always, getting something "right" after grappling with it being "wrong"

* Which parts of the challenge did you find tedious?
	The amount of time it took for me to realize I had the right code. 


=end 
