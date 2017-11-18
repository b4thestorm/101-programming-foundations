# goal: Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, 
# and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should 
# be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).


# logical layer
   
#     get a number 
#     make a store set it to 0
#     make a count set it to 0
#     write a times loop
#     iterate count up by 1 on each loop
#     check if count divisible by 3 
#        add count to store 
#     check if count divisbile by 5 
#        add count to store
#     end loop 
#     return store


# syntactical layer 

     def multisum(number)
       store = 0
       count = 0
         number.times  do 
            count += 1
            if count % 3 == 0 
              store += count 
            elsif count % 5 == 0
              store += count
            end 
            
         end  
         store 
     end 
    
