# goal: In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible
#  by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap
# year unless the year is evenly divisible by 400.

 
#  logical layer
#     get a year 
#      modulo the year by 100 
#      if year % 100 == 0 
#        modulo the year by 400 
#        if year % 400 == 0 
#         return true 
#       if year % 100 > 1 
#          modulo the year by 4
#        if year % 4 == 0 
#         return true

#  syntactical layer


 def leap_year(year)
    if year % 100 == 0
      if year % 400 == 0
       return true
      end
    elsif year % 4 == 0 
      return true 
    end 
    return false
 end 
