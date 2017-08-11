#Command line Calculator
=begin
Build a command line calculator program that does the following:

asks for two numbers
asks for the type of operation to perform: add, subtract, multiply or divide
displays the result
Use the Kernel.gets() method to retrieve user input, and use Kernel.puts() method to display output. Remember that Kernel.gets() includes the newline, so you have to call chomp() to remove it: Kernel.gets().chomp().

Let's take a first stab at it. Watch the video below and type along in a .rb file.
=end

def number?(integer)
 integer.class == 'Float' || integer.class == 'Fixnum'
end

loop do
Kernel.print(String.new("give me your first number - "))
  first_number = Kernel.gets().chomp()
  first_number.to_i()
   if number?(first_number)
     break
   else
     puts 'must enter a number'
   end
end

loop do
Kernel.print(String.new("give me your second number - "))
  second_number = Kernel.gets().chomp()
  second_number.to_i()
  if number?(second_number)
    if second_number == 0
      next 'Number cannot be zero'
    end
    break
  else
    puts 'You must enter a number'
  end
end

Kernel.print(String.new("Type what operation you would like to do? (multiply | add | divide | subtract) "))
  choice = Kernel.gets().chomp()
answer = case choice
           when 'add' then first_number.+(second_number)
           when 'subtract' then first_number.+(second_number)
           when 'multiply' then first_number.+(second_number)
           when 'divide' then first_number.+(second_number)
          else
            return 'nothing'
         end
answer
