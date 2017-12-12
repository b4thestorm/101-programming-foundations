require 'pry'

def swap_case(string)
count = 0 
transform = ""
  while  count < string.length  
    if (65..90).to_a.include?(string[count].bytes[0])
      transform.<<(string[count].bytes[0] + 32 )
    elsif (97..122).to_a.include?(string[count].bytes[0])
      transform.<<(string[count].bytes[0] - 32 )
    else 
      transform.<<(" ") 
    end 
    count += 1
  end 
  puts transform
end 
swap_case('I Love Launch School!')

