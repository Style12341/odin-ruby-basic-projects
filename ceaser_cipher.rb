def is_letter?(char)
  char.match(/[a-zA-Z]/)
end

def ceaser_cipher(string, offset)
  string_array = string.split('')
  string_array.map! do |char|
    if is_letter?(char)
      if char == char.downcase
        ((char.ord - 'a'.ord + offset) % 26 + 'a'.ord).chr
      else
        ((char.ord - 'A'.ord + offset) % 26 + 'A'.ord).chr
      end
    else
      char
    end
  end
  string_array.join('')
end

p ceaser_cipher("What a string!", 5)