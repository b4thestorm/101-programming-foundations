#  goal: Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.


# logical layer: 
#  generate a set of numbers from 1 - 99
#  if number % 2 == 0 --> number divided by 2 has a remainder of 0
#  save that number in an even numbers array
#  print the number 

# syntactical layer: 

number = 0 
even_numbers = []

while number <= 100
   even_numbers << number if number % 2  == 0
   number += 1
end 

puts even_numbers

            
 
