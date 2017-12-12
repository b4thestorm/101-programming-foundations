require 'pry'
# goal: Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those 
# Integers sorted based on the English words for each number:


def alpha_num_sort(list)
numbers = ['zero', 'one','two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven',
'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen','nineteen']
 store = []
 x = 0
 count = 0 
  loop do 
        check = list[x] <=> list[x+1] 
        if check == 1
         store.push(numbers[list[x]])
        end
    x += 1
    count += 1
    break if count == list.length
  end 
end 


alpha_num_sort([14, 1, 10, 8])
