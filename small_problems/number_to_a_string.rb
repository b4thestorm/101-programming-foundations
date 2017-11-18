require 'pry'
#goal:  Write a method that takes an integer, and converts it to a string representation.


#logical layer 
 
      #get an integer 
      #parse through the integer
      #convert each returned integer into its corresponding string 
      #return the resulting string

#syntactical layer 

#48 == "0" ... etc > 
def integer_to_array(integer)
  n = integer
  s = Math.log10(n).to_i + 1 # Gets the size of n
  Array.new(s) { d = n % 10; n = n / 10; d }.reverse 
end 

def signed_integer_to_string(integer)
    integers = integer_to_array(integer)
    string = ""
    integers.each {|x| string.<<(48 + x)}
    if integer < 0 
       print "".<<(45) + string
    else 
       print "".<<(43) + string
    end
end 

signed_integer_to_string(1235)




