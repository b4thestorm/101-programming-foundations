require 'pry'
# goal:  Write a method that takes a String of digits, and returns the appropriate number as an integer. 
#  The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number.

# logical layer 
  
#          get a string 
#          check for include?(- or +)
#          remove it 
#          parse the result into its bytes 
#          do the conversion  from byte to integer (num - 48 )
#          multiply each num by respective base 
#          add all numbers up
#          if the number is - ,, do num - num * 2 
#          if the sign is + ,, do nothing 
#syntactical layer 

     def signed_number(string)
        if string.include?("-") || string.include?("+")
          modified_string = string[1..string.length] 
        else
          modified_string = string
        end 
        decimal_numbers = []
        result = []
        modified_string.each_byte {|x| decimal_numbers.push(x - 48)} 
        start = decimal_numbers.length - 1  ; count = 0 
        until count == decimal_numbers.length 
          result.push(decimal_numbers[count] * 10**start)
          start -= 1
          count += 1
        end
        integer = result.inject {|x, i| x + i}
        return puts integer if string.include?("+") 
        return puts (integer - integer * 2) if string.include?("-") 
     end 


     signed_number("+148")
