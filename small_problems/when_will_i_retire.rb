# Goal:  build a program that displays when the user will retire and how many years she has 
#        to work till retirement.

#logical layer :
   
    # prompt user to enter their age 
    # set their response in a variable called age 
    # prompt user to say when they will retire 
    # set their response in a variable called retire_age 
     
    # set a variable called year_now 
    # subtract retire_age and age 
    # set the difference to a varaible remaining_years
    # add remaining_years to year_now
    # set the value to a variable called retire_year
     

#syntactical layer : 
     
     puts "please enter your age: " 
       age = gets.chomp.to_i   
     puts "what age  would you like to retire? "
       retire_age = gets.chomp.to_i

      year_now = Time.now.strftime('%Y').to_i
      remaining_years = retire_age - age
      retire_year  = remaining_years + year_now

       print "It's #{year_now}" 
       puts "You will retire in #{retire_year}"
       print "You have only #{remaining_years} years of work to go!"
      
