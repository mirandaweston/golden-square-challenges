require 'music_list'

RSpec.describe MusicList do
  it "adds a track to the music list" do
    music_list = MusicList.new
    expect(music_list.add("track_1")).to eq ["track_1"]
  end
end