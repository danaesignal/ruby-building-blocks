def caesar_cipher(unmodified_string, shift_factor)
  # Splits the input string into a series of individual characters
    split_word = unmodified_string.split("")
    split_word.each_index {|x|
      # Turns letters into their integer equivalent on the ASCII table
      split_word[x] = split_word[x].ord
      # Ignores spaces
      if split_word[x] == 32
      else
        # Shifts lowercase letters
        if (65..90) === split_word[x]
          split_word[x] = split_word[x] + shift_factor
          if split_word[x] > 90
            split_word[x] = split_word[x] - 26
          elsif split_word[x] < 65
            split_word[x] = split_word[x] + 26
          end
        # shifts uppercase letters
        elsif (97..122) === split_word[x]
          split_word[x] = split_word[x] + shift_factor
          if split_word[x] > 122
            split_word[x] = split_word[x] - 26
          elsif split_word[x] < 97
            split_word[x] = split_word[x] + 26
          end
        end
      end
      # Turns the numbers back into letters
      split_word[x] = split_word[x].chr
    }
    # Reassembles the word and returns it
    return split_word.join()
end

puts caesar_cipher("these words", 5)
