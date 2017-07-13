def caesar_cipher(unmodified_string, shift_factor)
    split_word = unmodified_string.split("")
    split_word.each_index {|x|
      split_word[x] = split_word[x].ord
      if split_word[x] == 32
      else
        if (65..90) === split_word[x]
          split_word[x] = split_word[x] + shift_factor
          if split_word[x] > 90
            split_word[x] = split_word[x] - 26
          end
        elsif (97..122) === split_word[x]
          split_word[x] = split_word[x] + shift_factor
          if split_word[x] > 122
            split_word[x] = split_word[x] - 26
          end
        end
      end
      split_word[x] = split_word[x].chr
    }
    puts split_word.join()
end

caesar_cipher("What a string!", 5)
