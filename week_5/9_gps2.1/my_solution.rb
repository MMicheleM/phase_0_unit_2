# U2.W5: Bakery Challenge GPS

# I worked on this challenge with Andrew "Kind Sir" Wittrock serving as my guide




# Our Refactored Solution


def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  food_array = []
  has_fave = false

  my_list.each_key do |k|
    if k == fav_food
      has_fave = true
    end
  end
  raise ArgumentError.new("You can't make that food") if has_fave == false
  fav_food_qty = my_list[fav_food]
  if num_of_people % fav_food_qty == 0
    num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."
  else num_of_people % fav_food_qty != 0
    while num_of_people > 0
      my_list.each do |k, v|
        food_qty = num_of_people / v
        num_of_people = num_of_people % v
        food_array << food_qty
      end
    end
    return "You need to make #{food_array[0]} pie(s), #{food_array[1]} cake(s), and #{food_array[2]} cookie(s)."
  end
end






#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 


=begin
	

* What parts of your strategy worked? What problems did you face?    
	No strategy per se. Problems faced strictly my brain processing info at times.	

* What questions did you have while coding? What resources did you find to help you answer them?  
	I had trouble understanding at first (I think simply a matter of end of day/tired brain) what the big loop was doing
	with the modulus but Andrew quickly sorted me out on that front. The 

* What concepts are you having trouble with, or did you just figure something out? If so, what?  
	Nothing in particular with this one that more sleep wouldn't have helped.

* Did you learn any new skills or tricks?
	Not to rely on Sublime's auto formatting.

* How confident are you with each of the Learning Competencies? 
	Identify/explain code: pretty solid think there was one blip. Identify and rewrite code - good on the ID not great 
	on rewrite.

* Which parts of the challenge did you enjoy?
	It was nice to know that I could read the code what I really enjoyed was seeing how it could be refactored. And in
	realizing that I didn't completely understand one piece of it but then understanding it after realizing my disconnect.

* Which parts of the challenge did you find tedious?
	None.

=end
