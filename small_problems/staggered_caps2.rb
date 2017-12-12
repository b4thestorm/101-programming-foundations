require 'pry'


def staggered_caps2(sentence)
   characters = sentence.chars 
   idx = 0
   clone_characters = ""
   characters.map do |x|
     if x == " " 
      clone_characters << x
      next
     end 
     if idx.odd?
      clone_characters << x.downcase
     else 
      clone_characters << x.upcase  
     end 
    idx += 1
   end 
  clone_characters
end 


staggered_caps2("I love Launch school")
