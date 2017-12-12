require 'pry'

def letter_counter(string)
 list = string.chars 
 data = {"upper_case" => 0, "lower_case" => 0, "neither" => 0}
 list.each do |x|
   if (65..90).to_a.include?(x.bytes[0]) 
     data["upper_case"] += 1
   elsif (91..122).to_a.include?(x.bytes[0])
     data["lower_case"] += 1
   else 
     data["neither"] += 1
   end 
 end 
   puts data
end 


letter_counter('abCdef 123')
