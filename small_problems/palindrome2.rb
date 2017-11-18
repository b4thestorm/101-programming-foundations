# goal: Write another method that returns true if the string passed as an argument 
        # is a palindrome, false otherwise. This time, however, your method should be
        # case-insensitive, and it should ignore all non-alphanumeric characters.
        # If you wish, you may simplify things by calling the palindrome? method you wrote 
        # in the previous exercise.

# logical layer 

     # accept a string 
     # reverse the string 
     #     split the string into an array 
     #     loop from -1 to -string.length 
     #     push each char into a new array called reversed_word
    
     # check the original string.upcase against the reverse string.upcase

# syntactical layer 

     def palindrome_insensitive(word)
       word_parts = word.gsub(/[^0-9a-z ]/i, '').chars
       reversed_word = []
        back = -1 ; front = -"#{word.length}".to_i
         until back <= front - 1 
               reversed_word << word_parts[back]
               back -= 1
         end        
       reversed_word = reversed_word.join('').upcase
       clean_word = word.gsub(/[^0-9a-z ]/i, '').upcase
       clean_word == reversed_word
     end 
