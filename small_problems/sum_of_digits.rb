# goal: Write a method that takes one argument, a positive integer, and returns the sum of its digits.


#logical layer 
  #get an integer
  #turn the integer to a string 
  #split the string 
  #inject on the resulting array 
 
  
#syntactical layer 

def sum_of_digits(integer)
  integers =  integer.to_s.split("").map(:&to_s)
end 
