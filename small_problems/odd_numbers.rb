# goal:  Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.


# logical layer: 
#  generate a set of numbers from 1 - 99
#  if number % 2 == 1 --> number divided by 2 has a remainder of
#  save that number in an odd numbers array
#  print the number 

# syntactical layer: 

number = 0 
odd_number = []

while number <= 100
   odd_number << number if number % 2  == 1        
   number += 1
end 

puts odd_number

            
