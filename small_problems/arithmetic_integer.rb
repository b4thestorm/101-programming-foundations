# goal:  Write a program that prompts the user for two positive integers, and then prints the results
#  of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, 
#  and power. Do not worry about validating the input.


# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103
def operation(a_number, b_number, flag)
    case flag 
     when 'addition'
      a_number + b_number 
     when 'subtraction'
      a_number - b_number
     when 'multiplication'
      a_number * b_number     
     when 'division'
      a_number / b_number
     when 'remainder'
      a_number % b_number
     when 'power'
      a_number ** b_number
    end 
end 

 puts "==> Enter the first number:"
  print "___=> "
  a_number = gets.chomp.to_i
 puts "==> Enter the second number:"
  print "___=> "
  b_number = gets.chomp .to_i 

 puts "#{a_number} + #{b_number} =" + "#{operation(a_number, b_number, 'addition')}" 
 puts "#{a_number} - #{b_number} =" + "#{operation(a_number, b_number, 'subtraction')}"
 puts "#{a_number} * #{b_number} =" + "#{operation(a_number, b_number, 'multiplication')}"
 puts "#{a_number} / #{b_number} =" + "#{operation(a_number, b_number, 'division')}"
 puts "#{a_number} % #{b_number} =" + "#{operation(a_number, b_number, 'remainder')}"
 puts "#{a_number} ** #{b_number} =" + "#{operation(a_number, b_number, 'power')}"
 
