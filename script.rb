def caesar_cipher(string, shift)
  shifted_string = string.downcase.chars.map do |char|
    alphabet = ('a'..'z').to_a
    if alphabet.include?(char)
      old_index = alphabet.index(char)
      new_index = (old_index + shift) % alphabet.size
      alphabet[new_index]
    else
      char
    end
  end
  shifted_string.join.capitalize
end



p caesar_cipher('What a string!', 5)
