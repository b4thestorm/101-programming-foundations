# goal:  Write a method that returns an Array that contains every other element of an Array that is
#        passed in as an argument. The values in the returned list should be those values that are in
#        the 1st, 3rd, 5th, and so on elements of the argument Array.

# logical layer 
 
#       pass in an array 
#       select values from the array only if the index is odd 
#       save the resulting array


# syntactical layer 

def odd(list)
  count = 0
  odd_list = list.each_with_object([]) {|x, odd| odd.push(x) if count.odd? ; count += 1}
end 
