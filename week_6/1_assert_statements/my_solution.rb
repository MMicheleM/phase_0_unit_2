# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# If method yields to block it passes.
# If method fails to yield then error messsage raised/thrown.
# In this case it passes when asserting name == bettysue but fails with billybob

# 3. Copy your selected challenge here

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




# 4. Convert your driver test code from that challenge into Assert Statements

def assert
	raise "Assertion failed!" unless yield
end

my_array_finding_method(i_want_pets, "t") == ["want", "pets", "but"]
assert {my_array_finding_method(i_want_pets, "t") == ["want", "pets", "but"]}
assert {my_array_finding_method(i_want_pets, "t") == ["want", "pets", "have"]}


#p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
#p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]


# 5. Reflection
=begin
* What parts of your strategy worked? What problems did you face?    
	Assert worked find. It was finding a challenge with driver code I could use that proved
	problematic. (rspec too ambitious for me this morning)

* What questions did you have while coding? What resources did you find to help you answer them?  
	None.

* What concepts are you having trouble with, or did you just figure something out? If so, what?  
	At present, none. Suspect that will rapidly change.

* Did you learn any new skills or tricks?
	Assert as a testing tool.

* How confident are you with each of the Learning Competencies? 
	Feel pretty good about my basic understanding of assert.

* Which parts of the challenge did you enjoy?
	As always, making something work.

* Which parts of the challenge did you find tedious?
	Finding code I could use.

=end

