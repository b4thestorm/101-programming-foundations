# Goal: Write a method that takes one argument, a string containing one or more words, and returns 
# the given string with all five or more letter words reversed. Each string 
# will consist of only letters and spaces. Spaces should be included only when more than one word is present.


# LOGICAL LAYER
 # GET a string 
 # split the string to an array 
 # loop through the array 
 # check if each word is longer than 5 characters 
 # run reverse
 # unless word is less than 5 characters


 #SYNTACTICAL LAYER 

   
   def reverse_it_2(sentence)
    words = sentence.split(" ")
    reversed_words = []
    words.length.times do |word|
     words[word].count > 5 ? reversed_words << words[word].reverse : reversed_words << words[word]
    end 
      
   end
