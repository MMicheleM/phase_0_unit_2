# U2.W4: Cipher Challenge


# I worked on this challenge with: Matt Darin (with assistance from Puru Dahal on refactored line where we didn't know what
# to replace [y] with and he helped us understand that it was: (('a'..'z').to_a)[cipher.index(y)])



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

def north_korean_cipher(coded_message) #def parameter n_k_c and passing c_m as value
  input = coded_message.downcase.split("") #set user input equal to lowercase characters and split them up into an array. We use the " " as a delimiter 
  decoded_sentence = [] # creating an empty array titled d_s 
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",   # Create a Hash titled cipher and give the key an alphabet character offset by -4
            "h" => "d",   # values are assigned in alphabetical order
            "i" => "e",   #
            "j" => "f",   #
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
    
    #cipher.collect{|key, value| value}
    
            
  input.each do |x| # What is #each doing here? each is the method that allows us to iterate over each key/value pair 
    found_match = false  # Why would this be assigned to false from the outset? It would assinged false because otherwise we would return false positives to begin with and the loop would never start. What happens when it's true? When it finds a match, it returns true.  At that point, it moves onto to line 50 
    cipher.each_key do |y| # What is #each_key doing here? this line is running through all of the keys and comparing them to the list of values. x == y 
      if x == y  # What is this comparing? this is comparing the key and value pairs for a match.  Where is it getting x? user input. Where is it getting y? cipher key- value What are those variables really? keys and values of a hash 
        puts "I am comparing x and y. X is #{x} and Y is #{y}." #printing a string if x == y that encrypts their true message
        decoded_sentence << cipher[y] #when a match is found, the y value is added to the decoded sentence. 
        found_match = true #while iterating, found_match will return true if it finds a match 
        break  # Why is it breaking here? the code found a match and we need to move on to the next letter to be decrypted. 
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? if the iteration searches for alphabetical characters and cannot find any, it will search for special characters such as: $, @, etc. 
        decoded_sentence << " " # if it finds a match it will append a space to the decoded message 
        found_match = true 
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? evaluating numerical characters
        decoded_sentence << x #add this match to the end of the decoded sentence 
        found_match = true
        break #breaks end the loop once we find a match 
      end 
    end
    if not found_match  # What is this looking for? this is looking for a match.  
      decoded_sentence << x #if we don't find a match, this will append the character that it was trying to match onto the end of the sentence
    end
  end
  decoded_sentence = decoded_sentence.join("") #when we broke apart the string on line 15, we are simply rejoining it here based on our iterations 
 
  if decoded_sentence.match(/\d+/) #What is this matching? this is matching a digit character ([0-9]) 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate... if there is a match, substitute in for it an integer divided by 100
  end  
  return decoded_sentence # What is this returning?  it is returning a decrypted message: "can somebody just get me 100 bags of cool ranch doritos?"       
end


# Your Refactored Solution
def north_korean_cipher(coded_message) 
  input = coded_message.downcase.split("") 
  decoded_sentence = []
  cipher = ('a'..'z').to_a.rotate(4) 

  input.each do |x| #  
    found_match = false  # 
    cipher.each do |y| # 
 if x == y  # What is this comparing? this is comparing the key and value pairs for a match.  Where is it getting x? user input. Where is it getting y? cipher key- value What are those variables really? keys and values of a hash 
        puts "I am comparing x and y. X is #{x} and Y is #{y}." #printing a string if x == y that encrypts their true message
        decoded_sentence << (('a'..'z').to_a)[cipher.index(y)] #when a match is found, the y value is added to the decoded sentence. 
        found_match = true #while iterating, found_match will return true if it finds a match 
        break  # Why is it breaking here? the code found a match and we need to move on to the next letter to be decrypted. 
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? if the iteration searches for alphabetical characters and cannot find any, it will search for special characters such as: $, @, etc. 
        decoded_sentence << " " # if it finds a match it will append a space to the decoded message 
        found_match = true 
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? evaluating numerical characters
        decoded_sentence << x #add this match to the end of the decoded sentence 
        found_match = true
        break #breaks end the loop once we find a match 
      end 
    end
    if not found_match  # What is this looking for? this is looking for a match.  
      decoded_sentence << x #if we don't find a match, this will append the character that it was trying to match onto the end of the sentence
    end
  end
  decoded_sentence = decoded_sentence.join("") #when we broke apart the string on line 15, we are simply rejoining it here based on our iterations 
 
  if decoded_sentence.match(/\d+/) #What is this matching? this is matching a digit character ([0-9]) 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate... if there is a match, substitute in for it an integer divided by 100
  end  
  return decoded_sentence # What is this returning?  it is returning a decrypted message: "can somebody just get me 100 bags of cool ranch doritos?"       
end




# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
# * What parts of your strategy worked? What problems did you face?
# Our refactoring of the hash into an array worked nicely. Using that array proved our stumbling block. 

# * What questions did you have while coding? What resources did you find to help you answer them?
# How to refactor the if/elsif/else loop. We stopped once we had refactored the hash into an array. On my list to come back to
# if I find myself with any spare time this week. (Laughing quite a bit at that notion. Sigh.) 

# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# Having trouble with my general lack of knowledge. This particular exercise made perfect sense. I cold read/parse the existing
# code but stumbled when trying to refactor it. Had an idea of what I wanted to refactor just no idea how to do it.

# * Did you learn any new skills or tricks?
# Skills - no. But discovered fish for terminal. Matt had it installed (having seen it on Puru's terminal) and so in the spirit of each
# one teach one I now have the knowledge of a fabulous (plug in? not sure what it's called)

# * How confident are you with each of the Learning Competencies?
# Identify and explain what code is doing - 90% confidence. Automate repetitive tasks using loops - 100%.
# Decompose a problem into smaller, easier to solve components - 90%. Identify and rewrite repetitive code  (ID - 90%. Rewrite - 30%)

# * Which parts of the challenge did you enjoy?
# Realizing that I knew what the code was doing. Understanding what could benefit from refactoring.

# * Which parts of the challenge did you find tedious?
# Not possessing the knowledge needed to refactor as quickly or as thoroughly as I'd like.




