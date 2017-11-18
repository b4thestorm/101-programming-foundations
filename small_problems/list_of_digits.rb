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

# GOAL: Write a method that takes one argument, a positive integer, and returns a list of the digits 
# in the number.

#LOGIC LAYER ---------------------------------------------------
  # GET a integer SET it to a local variable named set_count
  # SET an empty array to a local variable named digit_list
  # START a times loop using the set_count variable
     # MINUS 1 from set_count and save the result back to set_count
     # APPEND the new set_count to the digit_list array 
     # RUN LOOP
  # END loop
  # READ the digit_list array at the end of the loop


#SYNTACTICAL LAYER ---------------------------------------------

  def list_of_digits(set_count)
    digit_list = []
    count = set_count 
    count.times do 
     set_count -= 1
     digit_list << set_count 
    end 
    digit_list
  end 
