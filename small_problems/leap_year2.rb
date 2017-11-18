#goal:  The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, 
#the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible
#by 4.



#logical layer
    #get year 
    #modulo year by 4 
    #if no remiander (equally visible)
    #return true     
    #end branch 
    #return false  

#syntactical layer
   def julian_calendar(year)
      if year % 4 == 0 
        return true 
      end 
      return false
   end 




