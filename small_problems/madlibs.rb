# goal:  Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and 
# injects those into a story that you create.

require 'pry'

count = 0
choice = []

['noun', 'verb', 'adjective', 'adverb'].each do |x|
     if count == 0 || count == 1
       puts 'Enter a ' + x 
       choice << gets.chomp
     else 
       puts 'Enter an ' + x
       choice << gets.chomp
     end 
     count += 1
end 
puts "Do you " + "#{ choice[1]} " + "your #{choice[2]} " + "#{choice[0]} " +  "#{choice[4]}" + "? That's hilarious!"
  

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!
