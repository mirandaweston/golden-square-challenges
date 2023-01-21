class GrammarStats
    def initialize
    end

    def check(text)
        if text[0] == text[0].upcase && (text[-1] == "." || text[-1] == "?" || text[-1] == "!")
          return true
        else
            return false
        end
    end
end