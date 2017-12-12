require 'pry'

 def buy_fruit(list)
   count = 0 ; container = []
   list.length.times do 
     list[count][1].times do 
      container << list[count][0]
     end 
     count += 1
   end 
   binding.pry
   container
 end 

 buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])


sub_BbQeh6Vfm3nvf0
