require 'music_library'
require 'track'

RSpec.describe "Music Library Integration" do
    it "constructs" do
        music_library = MusicLibrary.new
        track_1 = Track.new("title", "artist")
        track_2 = Track.new("title", "artist")
    end

    it "adds a track to the library and returns a list of tracks" do
        music_library = MusicLibrary.new
        track_1 = Track.new("title", "artist")
        track_2 = Track.new("title_1", "artist_1")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.all).to eq [track_1, track_2]
    end

    it "passes a keyword as a string and searches for it within the library" do
        music_library = MusicLibrary.new
        track_1 = Track.new("title", "artist")
        track_2 = Track.new("title_1", "artist_1")
        music_library.add(track_1)
        music_library.add(track_2)
        music_library.all
        track_1.matches?(track_1)
        expect(music_library.search(track_1)).to eq [track_2]
    end
end