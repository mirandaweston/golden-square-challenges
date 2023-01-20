def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    p key.chars.uniq
    p ('a'..'z').to_a
    p ('a'..'z').to_a - key.chars
    exit
    ciphertext_chars = plaintext.chars.map do |char|
        p "cipher.find_index(char):"
        p cipher.find_index(char)
        p char
        p cipher
      (65 + cipher.find_index(char)).chr
    end
    return ciphertext_chars.join
  end
  
  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[65 - char.ord]
    end
    return plaintext_chars.join
  end

  puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  
  # Intended output:
  #
  # > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
  # > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"