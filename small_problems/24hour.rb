require 'pry'
# goal:  Write a method that takes a time using this minute-based format and returns 
# the time of day in 24 hour format (hh:mm). Your method should work with any integer input.


# logical layer 
#       take a number 
#       check if the number is negative or positive 
#       if number is negative 
#          return all minutes before midnight 
#       if the number is negative 
#          return all numbers after midnight 
      

#syntactical layer 
def hours_24(timestamp)
  minutes_per_hour = 60 
  hours_per_day = 24
  minutes_per_day = minutes_per_hour * hours_per_day

  if timestamp.to_i == 0 || timestamp.to_i == 24
    return total_minutes = 0
  end
  
  hours, mins = timestamp.split(":") 
  total_minutes = hours.to_i * 60 + mins.to_i
  puts total_minutes
end 

hours_24('00:00')
