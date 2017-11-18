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

# GOAL: Write a method that takes one integer argument, which may be positive, negative, or zero. This method 
 #return true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

#LOGIC LAYER ---------------------------------------------------
  # GET an integer and SET a local variable named number 
  # MODULO the number by 2 and check for remainder of 1 
  # SET the remainder to a local variable named parity
  # PRINT true IF parity is 1 
  # PRINT false IF parity is 0 


#SYNTACTICAL LAYER ---------------------------------------------

   def is_odd(number)
     parity = number % 2
     print true if parity == 1
     print false if parity == 0
   end 
