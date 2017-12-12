require 'pry'

def lights(number)
  number_range = (1..number).to_a
  hsh = number_range.each_with_object({}) {|num, hsh| hsh[num] = true }
  count = 0
  inner_count = 0
   number.times do 
     number.times do 
      if inner_count % 2 == 0
       hsh[inner_count] = !hsh[inner_count]
      end
      inner_count += 1
     end 
     count += 1
   end
   puts correct = hsh.group_by {|k, v| v == false }[true]
end 

lights(5)

