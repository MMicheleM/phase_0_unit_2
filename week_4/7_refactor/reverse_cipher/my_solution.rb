# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) # defines method that takes param of sentence
    alphabet = ('a'..'z').to_a  # creates object of alphabet, assigns value of a to z and assigns to an array
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] #creates obj of has using alphabet obj for values
                          # the .zip method coverts to array then merges elements of self with elements of
                          # each argument. The rotate(4) shifts the values of the alphabet by 4 such that 
                          # a becomes e, b becomes f, etc. The combo of zip and alpha.rotate means that the 
                          # newly created array holds the value of the rotated alphabet
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # creates obj spaces assigns various spec char as values
    
    original_sentence = sentence.downcase # takes value of parameter sentence puts in all lower case and 
                          # assigns it to obj original_sentence
    encoded_sentence = []  # creates new obj of type array that is empty
    original_sentence.each_char do |element| # for the orig_sent obj for each character (a.k.a. letter)
                          # do 'element'
      if cipher.include?(element) # checks to see if cipher obj includes the element (a.k.a. letter)
        encoded_sentence << cipher[element] # if so then it appends the encoded sentence obj with that letter
      elsif element == ' '    # if the element (letter) is a space
        encoded_sentence << spaces.sample # then use a sample (any one of) the spaces obj (a.k.a. spec char)
      else                  # otherwise
        encoded_sentence << element  # append encoded_sent with the literal value of element/letter 
      end     # closes if/elsif/else loop
     end      #
    
    return encoded_sentence.join # returns final  
end            # closes out t_to_c method


# Questions:
# 1. What is the .to_a method doing? 
    # Turns teh object into an array
# 2. How does the rotate method work? What does it work on?
    # It "adjusts" the values of the alphabet object - increasing by 4
# 3. What is `each_char` doing?
    # for each character in the original sentence
# 4. What does `sample` do?
    # selects a random sample from the spaces obj
# 5. Are there any other methods you want to understand better?
    # anything nested (like the .zip(aphabet.rotate(4)) above) Also .map
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
    # Better. We weren't able to clean up our if/elsif/else loop the way it is here.
    # We also were nowhere near as DRY as this is.
# 7. Is this good code? What makes it good? What makes it bad?
    # I would argue it's good as I perceive it to be rather DRY. I wonder if there is 
    # further refactoring that would make it even DRYer.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? 
    # No because the spacing is a randomized value from the list of special characters.
    # The alpha translation is the same each time
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 

=begin
  
* What parts of your strategy worked? What problems did you face?
    No real stratefy - straight forward assessment of the refactoring. No problems.

* What questions did you have while coding? What resources did you find to help you answer them?  
    What the .zip method was. ruby-doc answered that

* What concepts are you having trouble with, or did you just figure something out? If so, what?  
    None with this.

* Did you learn any new skills or tricks?
    Not this particular challenge.

* How confident are you with each of the Learning Competencies? 
    Good on the explaining and reseraching. A bit iffy on the good/bad code 

* Which parts of the challenge did you enjoy?
    Explaining what the code was doing - was nice to realize that I actually knew what it was doing! :)

* Which parts of the challenge did you find tedious?
    None. 

  
=end






