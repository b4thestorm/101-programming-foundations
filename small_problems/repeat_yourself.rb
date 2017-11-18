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

# GOAL: Write a method that takes two arguments, a string and a positive integer, and prints the string
#       as many times as the integer indicates.

#LOGIC LAYER ---------------------------------------------------
   # GET a string and SET to local variable name word
   # GET a number and SET to a local variable named count
   # START a times loop with the count variable
   # PRINT out the string word on EACH iteration


#SYNTACTICAL LAYER ---------------------------------------------

   def repeat_yourself(word, count)
     count.times {puts word}
   end 
