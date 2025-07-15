def caesar_cipher(string, shift_factor)

  encoded_string = ""

  character_count = 0

  while character_count < string.length
    char = string[character_count]

    if char >= 'a' && char <= 'z'
      # Shift lowercase letters
      shifted = ((char.ord - 'a'.ord + shift_factor) % 26) + 'a'.ord
      encoded_string += shifted.chr

    elsif char >= 'A' && char <= 'Z'
      # Shift uppercase letters
      shifted = ((char.ord - 'A'.ord + shift_factor) % 26) + 'A'.ord
      encoded_string += shifted.chr

    else
      # Leave other characters (spaces, punctuation) unchanged
      encoded_string += char
    end
    
    character_count += 1
    
  end

  return encoded_string
  
end

