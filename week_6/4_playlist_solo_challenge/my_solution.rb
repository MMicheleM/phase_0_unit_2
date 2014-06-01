# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.


# Pseudocode
	# Run code & debug (which presumably includes creating classes and methods)
	# Write driver code - include assert
	# Fill in details - 
		# Presumably 2 classes - Song and Playlist (based on existing code)
		# Methods would include - add, num_of_tracks, play, remove, includes?, play_all & display
		# OOD says everything should know as little as possible about each other so try and
		# make them as independent from one another as possible.

# Initial Solution
class Song  # create new class for Songs

	attr_reader :title, :artist  # making these readable by Playlist class; seems odd to put at top
								 # before init but I keep seeing them there in my reading

	def initialize(title, artist)  # initialize obj of class with 2 vars - title of song & artist
		@title = title  # set class instance of var == to local instance (a.k.a. self)
		@artist = artist  # ditto
	end

	def play  # creates play method (since it's a song playing & not a playlist song belongs in this class)
		puts "#{@title} by #{@artist} is now playing." # probably unnecessary but allows for QC
	end

end

class Playlist # create new class for the Playlist

	def initialize(*song) # using a splat as initial list is 3 args (allows for future flexibility)
		@playlist = song   # I had been setting to self all this time and thought I'd mix it up as it was
	end					   # my understanding that it could be anything - so tested theory/understanding out.

	def add(*song)  # method for adding song (again with splat as initial add is 2 songs, allows future flex)
		song.each { |x| @playlist << x } # add track to array; push takes > 1 arg; << takes only 1 arg
	end									 # used << as I had to loop (couldn't find right syntax to use
										 # push - which I suspect is because it needed looping...)
	def num_of_tracks	# method for checking # of tracks
		@playlist.length # length of array holding playlist
	end

	def remove(song)  # method to remove song from playlist
		@playlist.delete(song) # delete song passed through to method from array that is playlist
	end

	def includes?(song)	# method to check and see if a song is included in playlist/array
		@playlist.include?(song) # checks to see if song passed to method is in array
	end

	def play_all # method to play all the songs in the playlist
		puts "\nThe entire list will now play. Enjoy!"  # added this for readability of output
		@playlist.each { |x| puts "#{x.play}" }  # I think this may actually be a violation of OOD...
		puts "\nYour list has finished playing." # by virtue of it knowing about play rather than having											
	end											# a stand alone function that is similar/identical but in 
												# this class
	def display  # method for displaying all the songs in a playlist/array
		puts "\nThe songs in your playlist are:" # again for readability
		@playlist.each { |x| puts "#{x.title} by #{x.artist}" }  # Ditto my concern about violating OOD
	end															# principles with referencing Song class

end



# Refactored Solution

# Some day when I grow up I'll be refactoring code but honestly don't know what I could do to streamline
# what I've already got. (Looking forward to hearing from you in the review of code. :))




# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display


def assert
	unless yield
		raise "test failed"
	else
		puts "test passed"
	end
end



assert do 
	another_one_bites_the_dust = Song.new("Another One Bites The Dust", "Queen")
	my_playlist.add(another_one_bites_the_dust)
	my_playlist.num_of_tracks == 5  #should return true (4 after angels removal + this one)
	my_playlist.display
end

assert do
	my_playlist.includes?(another_one_bites_the_dust) # should return true
end

assert do
	my_playlist.remove(one_by_one)
	my_playlist.num_of_tracks == 5 # should return false (should be 4 after removal) 
end								   # and thus kick assertion error



# Reflection 

=begin
	
* What parts of your strategy worked? What problems did you face?    
	No real strategy on this one - it seemed really straightforward. I guess my forcing myself
	to do one error/one method/etc. at a time was good. I think sometimes I try and write all
	my code at once and it's much easier/cleaner to do it in bite size pieces. No real problems
	faced... unless I misunderstood something. Seemed really clear/clean.

* What questions did you have while coding? What resources did you find to help you answer them?  
	The whole attr (reader/writer/accessor) piece is still a bit fuzzy to me. In one pairing session
	this week my pair thought it replaced/could be used in lieu of initialize but that wasn't/isn't
	my understanding. Still not fully grounded in the details - have general sense of usage down - or
	at least my using it seems to work in the way I think it should. Perhaps you'll correct me. :)

* What concepts are you having trouble with, or did you just figure something out? If so, what?  
	Creating my own driver code - got better when I realized (thank you Molly!) how I could be 
	grabbing code from rspec and repurposing. But still seem to have some sort of block when doing
	it myself. Suspect I'm psyching myself out at this point. Am not terribly worried, just wish it
	came easier. And the accessor stuff is still a bit fuzzy - but I'll spend some more time on it in
	two weeks and hopefully lock it down in my brain.

* Did you learn any new skills or tricks?
	Nope, none that I can think of.

* How confident are you with each of the Learning Competencies? 
	Implement new Ruby class/use instance vars - good. Translate user story into driver code - ok(ish).
	Translate driver code into a class structure using OOD - not too shabby for this early in my
	Ruby knowledge.

* Which parts of the challenge did you enjoy?
	Making it work :)  Using splats correctly (thank you to - hrm... Alex I believe - for his insightful words
	on them earlier in the week when we paired on another challenge. They were front of mind when I
	started in on this one.)

* Which parts of the challenge did you find tedious?
	My limitations. Same old story.





=end