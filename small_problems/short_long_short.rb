# goal: Write a method that takes two strings as arguments, determines the longest of the two strings, 
# and then returns the result of concatenating the shorter string, the 
# longer string, and the shorter string once again. You may assume that the strings are of different lengths.


# logical layer 
 
#     get 2 strings 
#     return length on both strings
#     check both strings lengths 
  
# syntactical layer 
 
    def short_long_short(arg1, arg2)
      first = arg1.length 
      second = arg2.length       
      if first > second 
       "#{second}" + "#{first}" + "#{second}"
        else 
         "#{first}" + "#{second}" + "#{first}"
      end        
    end 
     
