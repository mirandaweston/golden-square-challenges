{{PROBLEM}} Class Design Recipe

1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface

Include the initializer and public methods with all parameters and return values.

class MusicList
  def initialize
  #sets a variable to store the list of tracks
  end

  def add(track) #task is a string representing a track to add to the list of music listened to
  #adds tracks to the music list and returns as an array
  end

  def list
  #returns the updated list of music listened to as an array
  end
end

# EXAMPLE

3. Create Examples as Tests

Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
music_list = MusicList.new
music_list.add("track_1")
music_list.add => ["track_1"]

# 2
music_list = MusicList.new
music_list.add("track_1")
music_list.add("track_2")
music_list.add("track_3")
music_list.add => ["track_1", "track_2", "track_3"]

# 3
music_list = MusicList.new
music_list.add("")
music_list.track_list => []

# 4
music_list = MusicList.new
music_list.add("track_1")
music_list.add("track_2")
music_list.track_list => ["track_1", "track_2"]

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.