class GrammarStats
    def initialize
        @texts = []
    end

    def check(text)
        if text[0] == text[0].upcase && (text[-1] == "." || text[-1] == "?" || text[-1] == "!")
            @texts.push("true")
            return true
        else
            @texts.push("false")
            return false
        end
    end

    def percentage_good
        count = 0

        @texts.each do |word|
            if word == "true"
                count += 1
            end
        end
        return percentage = (count * 100) / @texts.length
    end
end