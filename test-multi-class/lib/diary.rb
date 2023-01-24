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

    def count_words
        @entries.collect(&:count_words).sum
    end

    def reading_time(wpm)
        (count_words / wpm.to_f).ceil
    end

    def find_best_entry_for_reading_time(wpm, minutes)
        max_length = wpm * minutes
        readable = @entries.select do |entry|
            entry.count_words <= max_length
        end
        readable.max_by(&:count_words)
    end
end