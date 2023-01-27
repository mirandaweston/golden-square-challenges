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
end