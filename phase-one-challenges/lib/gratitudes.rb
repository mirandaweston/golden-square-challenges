class Gratitudes
    def initialize
        @gratitudes = []
    end

    def add(gratitude)
        @gratitudes.push(gratitude)
    end

    def format
        formatted = "Be grateful for: "
        formatted += @gratitudes.join(", ")
        return formatted
    end
end