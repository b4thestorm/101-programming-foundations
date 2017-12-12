
def twice(number)
 if number.to_s.length.even?
   if double_number?(number) 
   puts number 
   end 
 else 
  puts number * 2
 end 
end 

def double_number?(number)
   check = number.to_s.chars
   half = check.length / 2
   count = 0 
   left = [] ; right = []
   while count < check.length
     count < half ? left << check[count] : right << check[count]
    count += 1
   end 
  total_left = left.map {|x| x.to_i}.inject {|x, i| x + i}
  total_right = right.map {|x| x.to_i}.inject {|x, i| x + i}
  total_left == total_right
end 

twice(5)

