require 'pry'
# goal:  Write a method that takes a floating point number that represents an angle 
# between 0 and 360 degrees and returns a String that represents that angle in degrees, 
# minutes and seconds. You should use a degree symbol (°) to represent degrees, a single 
# quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 
# 60 minutes, while a minute has 60 seconds.

#logical layer 

    # take a number 
    # format the number to 3 places 
    # include a degree symbol if in mins
    # include a double dash symbol if in secs
#syntactical layer 

  def dms(degrees)
    degree = degrees.round  
    binding.pry
    pre_minute = degrees % 1 ; minutes = pre_minute * 60 
    pre_second = minutes % 1 ; seconds = pre_second * 60
    puts "#{degree}" + "#{}" + "#{minutes}" + "'" + "#{seconds}" + "\'\'"
 end
  
  dms(30) 
