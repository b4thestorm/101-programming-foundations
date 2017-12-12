require 'pry'

def reversed!(list)
count = -1 
reverse = 0
  until count < -list.length
    binding.pry
   list[reverse] = list[count]
   count -= 1
   reverse += 1
  end
puts list 
end

reversed!([1,23,4,5,6])

