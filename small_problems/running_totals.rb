require 'pry'
# goal: Write a method that takes an Array of numbers, and returns an Array 
# with the same number of elements, and each element has the running total from the original Array.



# logical layer 
    
#      get an array of values 
#      make a count 
#       loop through the array using a times loop and the length of the array -  1 
#       access the element you are on plus the element behind 
#       set the count equal to the addition of the current element plus the element behind 
#       return the total     

     

# syntactical layer
def running_total(totals) 
      count  = 0 
      run = totals.length - 1
      run.times do 
           count += 1
           totals[count] =  totals[count] + totals[count - 1] 
      end 
      puts totals 
end 

running_total([])
