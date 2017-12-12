# goal: Write a method that takes a string argument and returns a new string that contains the 
#value of the original string with all consecutive duplicate characters collapsed into a single character. 

# logical layer 

# split all characters 
# loop through 
# store the first character 
# check if the next character is the same as in the store 
# if the character is the same 
# store the index in a check array
# end loop 
# run a second loop to delete all stored index's


# syntactical layer 


def crunch(sentence)
   split_sentence = sentence.chars
   return if sentence.length  ==  1
   count  = 0
   store_character = []
   loop do 
     if split_sentence[count] != split_sentence[count + 1]
      store_character.push(split_sentence[count]) 
     end 
     count += 1
     break if count == sentence.length 
   end 
   crunched = store_character.join("")
end 

 crunch('ggggggggggggggg')
