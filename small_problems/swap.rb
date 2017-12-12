require 'pry'
# goal:  Given a string of words separated by spaces, write a method that takes this 
# string of words and returns a string in which the first and last letters of every word is swapped.


# logical layer 
#       split the word into an array 
#       iterate on each string of the array 
#       access the first and last letter of the word 
#       set the first letter to the last letter 
#       set the last letter to the first letter 

# syntactical layer 


def swap(sentence)
   list = sentence.split 
   swapped = list.map do |x|
                next if x.length == 1
                first , second = x[0] , x[-1] 
                x[-1] = first 
                x[0] = second
             end 
  puts list.join(' ')
end 

   swap('Abcde')
