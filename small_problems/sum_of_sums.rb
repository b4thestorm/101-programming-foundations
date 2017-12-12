require 'pry'

#logical layer 

 #check the length of the arrray 
 #create a loop 
 #creating arrays populating each array with the number of elements of the index I begin on. 


def sum_of_sums(list)
  length = list.length 
  container = []
  count = 0
  while count < length 
    container.<<(Array.new(list.first(count + 1)))
    count += 1
  end 
   result = container.flatten.inject(0) {|x,i| x + i}
   result
end

sum_of_sums([1, 5, 7, 3])
