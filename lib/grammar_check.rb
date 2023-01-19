def grammar_check(text)
    if text[0] == text[0].upcase && (text[-1] == "." || text[-1] == "?")
      return true
    elsif text[0] == text[0].downcase && text[-1] == "."
      return false
    elsif text[0] == text[0].upcase && text[-1] != "." || "!" || "?"
        return false
    end
end