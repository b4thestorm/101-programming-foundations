require 'pry'
#goal:  Write a method that will take a short line of text, and print it within a box.

 
# logical layer 
 
#    take a string 
#    print out a premade box 

# syntactical layer 

   def banner(sentence)
    if sentence.length > 1
     puts "+" + "#{'-' * sentence.length}" + "+"
     puts "|" + "#{" " * sentence.length}" + "|"
     puts "|" + "#{sentence}" + "|"
     puts "|" + "#{" " * sentence.length}" + "|"
     puts "+" + "#{'-' * sentence.length}" + "+"
    else
     puts "+" + "--" + "+"
     puts "|" + "  " + "|"
     puts "|" + "  " + "|"
     puts "|" + "  " + "|"
     puts "+" + "--" + "+"
    end
   end

  banner(' ')
