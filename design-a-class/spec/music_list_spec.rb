require 'music_list'

RSpec.describe MusicList do
  it "adds a track to the music list" do
    music_list = MusicList.new
    expect(music_list.add("track_1")).to eq ["track_1"]
  end

  it "returns an empty list when no track is added to the music list" do
    music_list = MusicList.new
    expect(music_list.list).to eq []
  end

  it "returns a list of all the tracks added to the music list" do
    music_list = MusicList.new
    music_list.add("track_1")
    music_list.add("track_2")
    expect(music_list.list).to eq ["track_1", "track_2"]
  end
end