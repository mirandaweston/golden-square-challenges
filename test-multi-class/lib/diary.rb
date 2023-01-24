class Diary
    def initialize
        @entries = []
    end

    def add(entry)
        @entries.push(entry)
    end

    def all
        return @entries
    end

    def count_words #returns the number of words in all diary entries
        @entries.collect(&:count_words).sum
    end

    def reading_time(wpm) #wpm is an integer representing the number of words the user can read per min
        (count_words / wpm.to_f).ceil #returns an integer representing an estimate reading time to read all entries
    end

    def find_best_entry_for_reading_time(wpm, minutes) #minutes is an integer representing number of minutes the user has to read
        max_length = wpm * minutes
        readable = @entries.select do |entry|
            entry.count_words <= max_length
        end
        readable.max_by(&:count_words) #returns entry closest to (but not over) the length the user could read in time available
    end
end