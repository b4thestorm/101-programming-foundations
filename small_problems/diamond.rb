require 'pry'

#    space = '' ; fill = '*'
#    count = 0 
width = 3 
range = (0..width).to_a 
inner_count = 0 
range.length.times do  #=> count   
   range.length.times do
     if inner_count / 2 != half     
       print space     
     else 
       print fill
     end 
   end
    count += 1
end 

top triangle 
middle bar 
bottom triangle 

 

diamond(3)

## top half of the diamond 
#  first  0 / 3      if 0 print fill at count / 2
#  second 1 / 3      if half print fill * width  
#  third  2 / 3      if end pint fill at count / 2 
# # ''*''
#  ***
# ''*'' 
   #    * 
   #   * *   
   # * * * * 
   #   * *  
   #    *


   #    *
   #  * * *
   # * * * * 
   #  * * * 
   #    * 
