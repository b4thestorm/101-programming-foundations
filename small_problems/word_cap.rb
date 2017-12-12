require 'pry'


def word_cap(string )
  array = string.split(" ")
  count = 0 
  list = []
  while count < array.length 
   list << array[count][0].upcase
   count += 1
  end 
  count = 0
  list.map {|x| array[count][0] = x ; count += 1}
  puts array.join(" ")
end 


word_cap('the javaScript language')
