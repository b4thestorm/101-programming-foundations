# # goal: Given a string that consists of some words and an assortment of non-alphabetic characters, write 
# # a method that returns that string with all of the non-alphabetic characters replaced by spaces. 

# logical layer 

#      get a string 
#      check if there are non alphanumeric characters 
#      make sure only 1 space is added per character set 

#   syntactical layer 

def clean_up(sentence)
   puts sentence.gsub(/[^0-9a-z ]/i, '') 
end 

 clean_up "---what's my +*& line?"
   
