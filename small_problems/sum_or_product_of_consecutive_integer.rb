# goal: Write a program that asks the user to enter an integer greater than 0,
#       then asks if the user wants to determine the sum or product of all numbers between 1 
#       and the entered integer.

# syntactical layer 
#    • prompt the user to enter an integer greater than 0 
#    • save the users answer to a variable 
#    • change the string of the variable to a integer
#    • prompt the user to choose either get a sum of all numbers or get the product of all numbers 

#    • if user chooses sum 
#      create a sum variable and set equal to 0
#      run a loop going to the end number 
#      add and store all numbers to sum variable 
  
#    • if user chooses product 
#      create a product variable and set equal to 0 
#      run a loop going to the end number 
#      multiply and store all numbers to product variable

# logical layer 

  
   puts "Please enter a number greater than 0 : "
     integer = gets.chomp.to_i
   puts "What operation would you like to run on your number:  s) Sum   or p) Product"
     answer = gets.chomp

     if answer == 's'
        sum = 0 
        count = 0
        while count <= integer 
         sum += count  
         count += 1
        end 
        puts sum
     elsif answer == 'p'
       product = 0 
       count = 0 
       while count <= integer
        product += count
        count += 1
       end
       puts product
    end 
