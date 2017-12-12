require 'pry'

def minilang(instruct)
stack    = []
register = 0

 rules = instruct.split(" ")
 rules.each do |x|
   case x
     when x.to_i != 0 
       register += x.to_i
     when x == "PUSH"
       stack.push(register)
     when x == "ADD"
       register += stack.pop 
     when x == "SUB"
       register -= stack.pop 
     when x == "MULT" 
       register *= stack.pop 
     when x == "DIV"
       register /= stack.pop
     when x == "MOD"
      mod = register % stack.pop
      register += mod
     when x == "PRINT"
      print register
     when x == "POP"
      register += stack.pop 
   end 
  end
  puts stack
end 

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
