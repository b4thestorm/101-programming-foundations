# goal:  Write a program that solicits 6 numbers from the user, then prints a message that describes 
#        whether or not the 6th number appears amongst the first 5 numbers.



#syntactical layer 

count = 1
store = []

def placement_prefix(number)
  case number 
     when 1
      prefix = "1st"
     when  2 
      prefix = "2nd"
     when  3
      prefix = "3rd"
     when 4 
      prefix = "4th"
     when 5
      prefix = "5th"
     else  
      prefix = "last"
  end 
end

while count <= 6  
    puts "==> Enter the #{placement_prefix(count)} number:"
     integer = gets.chomp.to_i
     store << integer unless count == 6
     if count == 6
       if store.include?(integer) 
         puts "The number #{integer} appears in #{store}."
        else
         puts "The number #{integer} does not appear in #{store}."
       end 
     end 
     count += 1   
     
end 



