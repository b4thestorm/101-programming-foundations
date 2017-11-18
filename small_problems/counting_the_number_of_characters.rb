# goal:  Write a program that will ask a user for an input of a word or multiple words and give back the
#        number of characters. Spaces should not be counted as a character.

     puts "give me a word or a phrase "
      print "=> " 
      answer = gets.chomp
      store  = answer.chars
      store.delete(" ") 
      count = store.count
      
     puts "There are #{count} characters in " + "#{answer}"

