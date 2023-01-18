def make_snippet(string)
    words = string.split(" ")
      if words.length <= 5
        return words.join(" ")
      else
        under_five = words.slice(0, 5)
        words = under_five.join(" ") + "..."
      end
    return words
end