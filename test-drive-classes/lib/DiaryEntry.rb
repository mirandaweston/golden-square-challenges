class DiaryEntry
    def initialize(title, contents)
        @title = title
        @contents = contents
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

    def reading_time(wpm)
        @contents.split(" ")
        return 0 if @contents == ""
        return 1 if @contents.length < wpm
        time = words.length / wpm
        return time
    end
end