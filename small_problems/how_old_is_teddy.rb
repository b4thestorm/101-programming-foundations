# goal: Build a program that randomly generates and prints Teddy's age. To get the age, 
#  you should generate a random number between 20 and 200.


# logical layer
   #  print a string 
   #  the string should say : 'Hi, im teddy, Im #{ } years old'
   #  use ruby random number generator as a variable



# syntactical layer   
    def how_old_is_teddy
      print "Hi, i'm teddy. I'm #{rand(20..200)} years old"
    end 

