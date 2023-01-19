def grammar_check(text)
    if text[0].capitalize && text[-1] == "." || text[-1] == "?"
        return true
    end
end