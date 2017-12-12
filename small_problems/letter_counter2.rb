require 'pry'
# goal: Modify the word_sizes method from the previous exercise to exclude non-letters when determining 
# word size. For instance, the length of "it's" is 3, not 4. 

# logical layer 

#      get a sentence 
#      clean up all non alpha numerical characters 
#      run group by for length 
    

# syntactical layer 

     def word_sizes(sentence)
        cleaned = sentence.gsub(/[^0-9a-z]/i, ' ')
        grouped = cleaned.split.group_by {|x| x.length }
        results = grouped.each {|x, i| grouped[x] = i.length}
     end

     word_sizes("What's up doc?")
