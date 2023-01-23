class DiaryEntry
    def initialize(title, contents)
        @title = title
        @contents = contents
        @words = contents.split
        @starting_index = 0
    end

    def title
        return @title
    end

    def contents
        return @contents
    end

    def count_words
        @words.length
    end

    def reading_time(wpm)
        return (@words.length / wpm.to_f).ceil
        #returns integer representing estimate of reading time for contents at given wpm
    end

    def reading_chunk(wpm, minutes)
        total_words = wpm * minutes
        ending_index = @starting_index + total_words
        @starting_index = 0 if (@starting_index + total_words) > @words.length

        chunk_of_text = @words[@starting_index, total_words].join(" ")
          @starting_index = ending_index
          return chunk_of_text
        #returns string w a chunk of contents the user can read in no. of mins
        #if called again, this method should return next chunk until fully read
        #next call restarts from beginning
    end
end