def estimate_reading_time(text)
  words = text.split(" ")
  return 0 if text == ""
  return 1 if words.length < 200
  time = words.length / 200
  return time
end