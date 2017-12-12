require 'pry'

def remove_vowels(array)
  array = array.join.chars
  vowels = %w(a e i o u A E I O U)
  vowels.each {|x| array.delete(x)}
  binding.pry
  array
end

remove_vowels(%w(green YELLOW black white))
