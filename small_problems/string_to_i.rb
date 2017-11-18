require 'pry'
# goal: The String#to_i method converts a string of numeric characters (including an optional plus or minus sign)
#  to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will
#   create a method that does the same thing.

# logical layer 

#      you have to know the conversion from string to ascii to digit. 
#      the conversion from ascii  to digit is ascii value - 48 
#      multiply the number in the transformed array by the numbers correct place
       


# syntactical layer 

    def string_to_integer(string)
      base_dict = { 1 => 1, 2 => 10, 3 => 100, 4 => 1000, 5 => 10000, 6 => 100000}
      keys = base_dict.keys
      store = []; count  = 0 ; result = []; 
      string.each_byte {|dec| store.push(dec - 48)}
      base = keys[0,store.length].reverse
      loop do 
          result.push(base_dict[base[count]] * store[count])
          count += 1
          break if count == store.length
      end
      result = result.inject(0) {|x, i| x + i}
      puts result
    end 
     
     string_to_integer("19888")
