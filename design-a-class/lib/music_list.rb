class MusicList

  def initialize
    @tracks = []
  end

  def add(track)
    @tracks << track
  end

  def list
    return @tracks
  end
end