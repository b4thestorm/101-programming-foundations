require 'pry'
# goal:  Write a method that takes a string with one or more space separated words and 
# returns a hash that shows the number of words of different sizes.

# logical layer 

#      take a string 
#      turn the string into an array 
#      run group_by on it 
#      group_by the length

# syntactical layer 

   def letter_counter(sentence)
     count = sentence.split.group_by {|x| x.length}
     count.each {|x, i| count[x] = i.count}
   end 

   
letter_counter('Four Four score and seven.')
