class DiaryEntry
    def initialize(title, contents) #title and contents are strings
        @title = title
        @contents = contents
        @words = contents.split
        @starting_index = 0
    end

    def title
        return @title #returns the title as a string
    end

    def contents
        return @contents #returns the contents as a string
    end

    def count_words
        @words.length #returns number of words in the contents as an integer
    end

    def reading_time(wpm) #wpm is no. of words user can read per minute
        return (@words.length / wpm.to_f).ceil #returns est. reading time for the contents at given wpm
    end

    def reading_chunk(wpm, minutes)
        total_words = wpm * minutes
        ending_index = @starting_index + total_words
        @starting_index = 0 if ending_index > @words.length

        chunk_of_text = @words[@starting_index, total_words].join(" ")
          @starting_index = ending_index
          return chunk_of_text
        #returns string w a chunk of contents the user can read in no. of mins
        #if called again, this method should return next chunk until fully read
        #next call restarts from beginning
    end
end