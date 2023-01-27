class MusicList

  def initialize
    @tracks = []
  end

  def add(track)
    @tracks << track
  end

  def track_list
    return @tracks
  end
end