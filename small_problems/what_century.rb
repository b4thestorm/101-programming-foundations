# goal:  Write a method that takes a year as input and returns the century. The return value should be a string 
# that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
require 'pry'
# logical layer 
#     ask for a year 
#     divide year by 100
    

# syntactical layer 
     
def century(year) 
    if year % 10 == 0
      century_indicator = year/100
      clock = 0
    else 
      century_indicator = year/100 + 1
      clock = century_indicator % 10
    end 
    if clock == 1
      century_prefix = "st"
     elsif clock == 2 
      century_prefix = "nd"
     elsif clock  == 3
      century_prefix = "rd"
     elsif (4..9).include?(clock)
      century_prefix = "th"
     elsif clock == 0 
      century_prefix = "th"
    end
    century_prefix = "th" if (11..14).include?(century_indicator)
   puts  "#{century_indicator.to_s}" +  "#{century_prefix}"
end

century(10103)

