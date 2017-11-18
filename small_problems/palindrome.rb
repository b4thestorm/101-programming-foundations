# goal: Write a method that returns true if the string passed as an argument is a palindrome, 
#       false otherwise. A palindrome read the same forward and backward.
#       For this exercise, case matters as does punctuation and spaces.

# logical layer 

     # accept a string 
     # reverse the string 
     #     split the string into an array 
     #     loop from -1 to -string.length 
     #     push each char into a new array called reversed_word
     # check the original string against the reverse string

# syntactical layer 

     def palindrome(word)
       word_parts = word.chars
       reversed_word = []
        back = -1 ; front = -"#{word.length}".to_i
         until back <= front - 1 
               reversed_word << word_parts[back]
               back -= 1
         end 
       reversed_word = reversed_word.join('')
       word == reversed_word
     end 
