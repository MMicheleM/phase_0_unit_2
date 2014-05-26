# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: Solicit guess in form of a #
# Output: Either :high, :low or :correct
# Steps:  1. iniitalize with answer  
#
#         2. create method for tracking and checking user's guess
#             a. returning :high, :low or :match
#
#         3. create method to check value of guess against value of answer
        


# 3. Initial Solution

class GuessingGame
  
  def initialize(answer)  # init & pass in the answer
    @answer = answer  # assign instance variable the value of the answer
  end
 
  def guess(guess)  # pass in the guess
    @guess = guess # assign instance variable the value of the guess

    if @guess == @answer # checks to see if guess equals answer and then returns associated value
      return :correct 
    elsif @guess > @answer # if it wasn't equal then checks to see if guess is larger/greater/higher & rtns
      return :high
    else @guess < @answer # otherwise checks for less than/smaller/lowers & returns appropriate value
      return :low
    end
  end 

  def solved?  # ending in ? indicates a predicate method which expects boolean value (there is the question of Ruby & truthy-ness)
      @guess == @answer   # which makes me think I should perhaps say !!== to force a "true" true... but I'm not cerain I'm reading
  end          # that all correctly. And since checking to see if guess == answer seems to pass rspec am leaving as is.

end


# 4. Refactored Solution

      # I'm sure that my if/elsif/else could at the least be refactored to a 'case' but I'm out of time. And there are
      # undobutedly other refactoring pieces that could be applied.


# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(22)
game.solved?  # should be false at this stage
game.guess(2)  # should return :low
game.guess(201) # should return :high
game.guess(22) # should return :correct
game.solved? # should now return true

# my tests all pass when code is run through irb. And rspec tests pass when I run them. (I am a happy camper!!) 


# 5. Reflection 

=begin
    * What parts of your strategy worked? What problems did you face?    
      My basic code all worked fine... it was my over-thinking of the challenge that was my downfall this week.
      I had originally coded essentially what is up above but had thought I needed to include the print/prompts
      to capture user input and got lost down a rabbit hole of trying to get all that code/the looping set up
      correctly. When I finally stripped it down to the base code and ran rspec I discovered that the tests all
      passed. To me this further exemplifies my ongoing challenge with Driver Tests... We're meant to write them
      early on but my disconnect around them leaves me frustrated with them and so I don't do them until the end.
      In looking at this challenge from driver test "upwards" I can see how the rabbit hole could have been avoided
      if only I had understood what I was coding towards. One one hand I'd argue it's an exciting breakthrough, on
      the other hand I'd say it is my Achilles that I desperately need to address.  Now that I'm done with work
      I plan to amping up my "external" learning (books, tutorials, etc.) and am hopeful that not having to split
      my attention eight ways from Sunday will make the coming weeks easier and more productive.

    * What questions did you have while coding? What resources did you find to help you answer them?  
      The looping I was trying to do with soliciting user input until a match was found. There were no resources
      that I used that helped me answer them - I did do some limited searching but in keeping with the intent of
      our solo challenges didn't Google too much/far. 

    * What concepts are you having trouble with, or did you just figure something out? If so, what?  
      Not to belabor the point but... Driver Tests.  Though it is tempered by the KISS (Keep It Stupidly Simple) 
      realization of the week. Hopefully I can keep KISS at front of mind next week and have it positively impact 
      both my approach to Driver Tests and my solution to the solo challenge.

    * Did you learn any new skills or tricks?
      Not necessarily new but good lesson in patience and walking away and returning to something.

    * How confident are you with each of the Learning Competencies? 
      Break down into psuedo code - fairly solid I think.
      Implement basic Ruby class and ID when to use instance variables - okay to good.
      Loops - no comment. (In general fine, with this it just bit me with my over thinking things.)
      Explain how instance variables and methods represent the characteristics & actions - good.

    * Which parts of the challenge did you enjoy?
      The taste of sweet victory when I took it back to basics and rspec passed.

    * Which parts of the challenge did you find tedious?
      My self-inflicted rabbit hole.

=end
