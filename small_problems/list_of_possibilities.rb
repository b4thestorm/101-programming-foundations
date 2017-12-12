require 'pry'

def multiply_all_pairs(list1, list2)
   dictionary = {}
   list3 = []
   list1.each {|x| dictionary[x] = list2 }
   dictionary.each do |k,v|
     list3 << v.map {|element| element * k}
   end 
   list3.flatten.sort
end 

multiply_all_pairs([2, 4], [4, 3, 1, 2])
