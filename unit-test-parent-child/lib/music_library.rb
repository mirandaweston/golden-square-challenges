class MusicLibrary
    def initialize
        @tracks = []
    end

    def add(track) #track is an instance of Track, which gets added to the library
        @tracks.push(track)
    end

    def all
        return @tracks
    end

    def search(keyword) #keyword is a string
        return @tracks.select { |track| track.matches?(keyword)}
    end
end