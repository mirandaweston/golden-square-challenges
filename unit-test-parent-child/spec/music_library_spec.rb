require 'music_library'

RSpec.describe MusicLibrary do
    it "returns an empty track list when given an empty array" do
        music_library = MusicLibrary.new
        expect(music_library.all).to eq []
    end

    it "adds a track twice and returns all track objects" do
        music_library = MusicLibrary.new
        track_1 = double :track, matches?: true
        track_2 = double :track, matches?: false
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.all).to eq [track_1, track_2]
    end

    it 'searches tracks that include the given keyword' do
        music_library = MusicLibrary.new
        track_1 = double :track
        expect(track_1).to receive(:matches?).with("two").and_return(true)
        track_2 = double :track
        expect(track_2).to receive(:matches?).with("two").and_return(false)
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.search("two")).to eq [track_1]
    end
end