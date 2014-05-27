# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer

attr_reader :contents  # accessor that allows all methods in class to read value of contents

# Are there any more methods needed in this class? - No and in fact you can get rid of open & close

  def initialize
	@contents = []  #init array that will be contents of drawer
	#@open = true - don't need it as it's not (currently) used
  end

=begin
  def open
	@open = true
  end

  def close
	@open = false
  end 
=end

  def add_item(add_item)  # define method for adding item(s) to drawer
	@contents << add_item   # pushes new items to end of existing array (contents)
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing? - removes last item from 
	@contents.delete(item)       # the @contents array and returns it (in this case for deletion)
  end                   # is there a way to refactor this? (I'm being unsuccessful...)

  def dump  # what should this method return? - an empty drawer; it doesn't.
	@contents = []  # added this to reset the array to be empty (i.e. emptied the drawer)
	puts "Your drawer is empty."
  end

  def view_contents  # allows you to see what is in the drawer at any given time
	puts "The drawer contains:"
	@contents.each { |silverware| puts "- " + silverware.type }  # iterates through contents array
  if (@contents == []) then puts "nothing."  # and adds a "- [type]" for each item in drawer.
  end                                        # I added the if empty array return nothing otherwise
  end                                        # it looked weird and wasn't descriptive.
end

class Silverware

attr_reader :type  # an accessor that allows all methods in class to read type
attr_reader :clean  # I added; allows methods to read parameter of clean w/out having to re-define
                    # Allows bonus item to pass - reads as clean = false (which it should be since 
                    # someone has just used it to eat something)
# Are there any more methods needed in this class? - yes, clean_silverware

  def initialize(type, clean = true)  # init type (of utensil) and its cleanliness state
	@type = type
	@clean = clean
  end

  def eat  # defines the eat method
	puts "eating with the #{type}"  # returns phrase using value (type) passed through
	@clean = false  # utensil has been used so state changes to dirty
  end

  def clean_silverware # method for checking cleanliness of a utensil. By virtue of
  end                  # accessor up top it negates (I believe) the need for any cod
                       # within the body of the method.
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?

fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
removed_fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
removed_fork.eat

#BONUS SECTION
puts fork.clean
 
# DRIVER TESTS GO BELOW THIS LINE

silverware_drawer.view_contents #expect it to be empty from the dump call on line 92 since added fork was removed for use

spoon = Silverware.new("spoon")
knife = Silverware.new("knife")
silverware_drawer.add_item(spoon)
silverware_drawer.add_item(knife)
silverware_drawer.add_item(spoon)
silverware_drawer.add_item(fork)  # don't need to create new as it was done after the dump.

silverware_drawer.view_contents  # there should be 2 spoons and 1 knife
removed_spoon = silverware_drawer.remove_item(spoon)  # takes out spoons (thought it would take 1 but can see why it was both)
silverware_drawer.view_contents  # should have 1 each - knife & fork
removed_spoon.eat
puts spoon.clean # should be false as prior line makes it dirty

# 5. Reflection 
=begin
  
* What parts of your strategy worked? What problems did you face?    
  Debugging up through the fork one was easy/straightforward. Fork was as well - just took a bit of reading to understand the
  nuances of the code. No problems - just trial and error. :)

* What questions did you have while coding? What resources did you find to help you answer them?  
  What the accessor was/how it was used. Google is my friend. 

* What concepts are you having trouble with, or did you just figure something out? If so, what?  
  My usual broken record: writing driver tests totally is my Achilles heel.

* Did you learn any new skills or tricks?
  Accessors... very cool.

* How confident are you with each of the Learning Competencies? 
  Well I could be out to lunch but if not then I think I'm pretty solid with both debugging and defining a method's responsibility.

* Which parts of the challenge did you enjoy?
  Getting things to work out.

* Which parts of the challenge did you find tedious?
  Driver tests.

=end
