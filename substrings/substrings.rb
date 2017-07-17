def build_library(dictionary)
  library = {}
  dictionary.each {|entry|
    library[entry] = 0
  }
  library
end

def trim_library(library)
  library.delete_if {|key, value| value < 1}
  library
end

def substrings(user_input, valid_substrings)
  library = build_library(valid_substrings)
  user_array = user_input.split(" ")
  user_array.each {|word|
    valid_substrings.each {|dictionary_entry|
      if word.downcase.include? dictionary_entry.downcase
        library[dictionary_entry] += 1
      end
    }
  }
  library = trim_library(library)
  puts library
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
