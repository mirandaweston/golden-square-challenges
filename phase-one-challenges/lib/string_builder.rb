class StringBuilder
    def initialize
        @str = ""
    end

    def add(str)
        @str += str
    end

    def size
        return @str.length
    end

    def output
        return @str
    end
end