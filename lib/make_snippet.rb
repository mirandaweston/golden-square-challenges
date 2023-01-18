def make_snippet(string)
    words = string.split(" ")
      if words.length <= 5
        return words.join(" ")
      else
        return words.slice(0, 5).join(" ") + "..."
      end
    return words.join(" ")
end