require 'track'

RSpec.describe Track do
    it "constructs" do
        track_1 = Track.new("title_1", "artist_1")
        track_2 = Track.new("title_2", "artist_2")
    end

    it "returns true if given a keyword in the title" do
        track = Track.new("title_1", "artist_1")
        expect(track.matches?("title_1")).to eq true
    end

    it "returns true if given a keyword in the artist" do
        track = Track.new("title_2", "artist_2")
        expect(track.matches?("artist_2")).to eq true
    end

    it "returns false when given a keyword which is not present in title or artist" do
        track = Track.new("title_3", "artist_3")
        expect(track.matches?("artist_2")).to eq false
    end
end