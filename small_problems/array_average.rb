# goal: Write a method that takes one argument, an array containing integers, 
#      and returns the average of all numbers in the array.  The array will never 
#      be empty and the numbers will always be positive integers.


#logical layer 

   # get an array of integers 
   # loop through the array 
   # sum all of the integers up 
   # divide the total by the number of integers 

#syntactical layer

   def average(integers)
      sum = integers.inject(0){|x, i| x + i }
      average = sum / integers.size
   end 


