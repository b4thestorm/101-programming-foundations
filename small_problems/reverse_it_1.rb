#GOAL: Write a method that takes one argument, a string, and returns the same string with the words 
#      in reverse order.


#LOGICAL LAYER ------------------

    #GET string 
    #split into array 
    #loop through string from -1 
    #join the resulting array 

#SYNTACTICAL LAYER 
  
    def reverse_it_1(sentence)
      words = sentence.split(" ")
      reverse_sentence = []
      start = - 1 
      finish = -"#{words.length}".to_i
      until start < finish
        reverse_sentence << words[start]   
        start -= 1     
      end
      reverse_sentence.join(" ")
    end 

   
