def caesar_cipher(message, shift)
    adjusted_shift = shift % 26
    cipher = message.each_char.map do |char|
      # Check for alphabetic characters
      if char =~ /[a-z]/i
        # Convert to ASCII, apply the ajusted shift and handle wrapping
        new_ascii = (char.ord + adjusted_shift - "a".ord + 26) % 26 + "a".ord
        new_ascii.chr
      else
        # Keep non-alphabetic characters as they are
        char
      end
    end.join
  
    cipher
  end

message = "ola amigo, tuud bem ???"
shifts = 17545
puts caesar_cipher(message, shifts)