require 'pry'


def leading_substrings(string)
   list = string.chars 
   count = 0 ; container = []
   list.length.times do 
     container << Array.new(list.first(count + 1))
      count += 1
    end 
   container.map {|x| x.join }
end 

leading_substrings('xyzzy')
