class PigLatinizer
attr_reader :text


#This breaks up the responsibilites and divie the challenge into smaller components parts.

#take in the original string, will take care of parsing the string into words and then putting the piglatinized words back together.

def piglatinize(string)
    array1 = string.split(" ") #split the string into individual words.
    array2 = array1.map {|word| piglatinize_word(word)} #piglatinize each word using the piglatinize_word helper method
    array2.join(" ") #join the words again into a string
end

def piglatinize_word(word) #takes one word at a time and translate it to Pig Latin.
  first_letter = word[0].downcase
  if ["a", "e", "i", "o", "u"].include?(first_letter)
    "#{word}way"
      # piglatinize word that starts with a vowel
  else
    consonants = []
          consonants << word[0]
            if ["a", "e", "i", "o", "u"].include?(word[1]) == false
              consonants << word[1]
              if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                consonants << word[2]
              end
            end
          "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end
      end
end
