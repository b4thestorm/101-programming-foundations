# goal: 
# Write a method that takes one argument, a positive integer, and returns a 
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.

#logical layer: 
 # get an integer
 # run a times loop 
 # returns the number 1 if even - store the number
 # return the number 0 if odd - store the number
 # return the string 

 #syntactical layer: 

   def stringy_strings(integer)
     new_number = ''
      integer.times do |x| 
        if x % 2 == 1
          new_number << '1'
        else 
          new_number << '0'
        end
      end 
   end


