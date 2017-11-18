# goal: Create a simple tip calculator. The program should prompt for a bill amount and a tip rate.
#  The program must compute the tip and then display both the tip and the total amount of the bill.

# logical layer 

    # prompt user for bill amount 
    # get bill amount and set to variable called bill_amount
    # prompt user for tip amount 
    # get tip rate and set a variable called tip_rate  
    # multiply the bill amount by tip rate divided by 100 
    # set the return value to a variable called tip_amount 
    # and then add the tip_amount variable to the bill_amount 

      
# syntactical layer

  puts "hey cashier:  enter a bill amount..."
     bill_amount = gets.chomp.to_i
  puts "hey customer: how much percent do you want to tip?"
     tip_rate = gets.chomp.to_i 
     tip_percent =  (tip_rate/100).to_f
     
     tip_amount = tip_percent * bill_amount 
     total_amount = tip_amount + bill_amount 

   puts "The tip is #{tip_amount}"
   puts "The total amount is #{total_amount}"
   
