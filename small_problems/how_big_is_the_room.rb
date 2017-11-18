# goal: Build a program that asks a user for the length and width of a room in meters and 
# then displays the area of the room in both square meters and square feet. 

logical layer

   prompt the user with a message for length 
    accept user answer and set to a variable 
   prompt the user with a message for length 
    accept user ansewer and set to a variable 
   multiply length by width and set to a variable called square_meters 
   multiply square meters by the conversion to square feet 
   return both values as a hash


syntactical layer 


      puts "Please enter a room length" 
       length = gets.chomp.to_i
      puts "Please enter a room width" 
       width = gets.chomp.to_i

       square_meters = width * length 
       square_feet = square_meters.to_f * 10.7639  

      store  = Hash.new
      store[:square_meter] = square_meters 
      store[:square_feets] = square_feet 
       
      puts store 

