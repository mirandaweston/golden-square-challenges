def estimate_reading_time(text)
  words = text.split(" ").length
    if words == 0
      return 0
    else
      return 1
    end
end