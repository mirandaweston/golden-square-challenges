def grammar_check(text)
  if text.empty?
    true
  elsif text[0] == text[0].upcase && (text[-1] == "." || text[-1] == "?" || text[-1] == "!")
    true
  else
    false
  end
end
