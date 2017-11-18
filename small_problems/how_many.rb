<<-HEREDOC
   START start of the program
   SET sets a variable we can use for later
   GET retrieve input from user
   PRINT displays output to user
   READ  retrieve value from variable
   IF / ELSE IF / ELSE show conditional branches in logic
   WHILE show looping logic
   END end of the program
HEREDOC

#GOAL: Write a method that counts the number of occurrences of each element in a given array.



#LOGIC LAYER ---------------------------------------------------
   GET an array of words(strings)
   Run group_by on words

   

#SYNTACTICAL LAYER ---------------------------------------------

    def how_many(words)
      words.group_by(&:capitalize).map{|k, v| [k, v.length]}.to_h
    end 

#QUESTIONS
#IF I NEVER USED COUNT AND LOOP AGAIN WHAT WOULD I REPLACE IT WITH ?
