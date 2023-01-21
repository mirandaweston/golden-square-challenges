class DiaryEntry
    def initialize(title, contents)
        @title = title
        @contents = contents
        @starting_index = 0
    end

    def title
        return @title
    end

    def contents
        return @contents
    end

    def count_words
        return @contents.split(" ").length
    end

    # `wpm` is an integer representing the number of words the user can read per minute  
    def reading_time(wpm)
        words = @contents.split(" ")
        time = (words.length / wpm.to_f).ceil
        return time
    end

    # `minutes` is an integer representing the number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    def reading_chunk(wpm, minutes)
        words = @contents.split(" ")
        total_words = wpm * minutes
        ending_index = @starting_index + total_words
        @starting_index = 0 if (@starting_index + total_words) > words.length

        chunk_of_text = words[@starting_index, total_words].join(" ")
          @starting_index = ending_index
          return chunk_of_text
    end
end