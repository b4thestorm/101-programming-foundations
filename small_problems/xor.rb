# goal: The || operator returns a truthy value if either or both of its operands are truthy, a falsey value
#        if both operands are falsey.

#        In this exercise, you will write a method named xor that takes two arguments, and returns true if 
#        exactly one of its arguments is truthy, false otherwise.

#        

 # logical layer : 
 #    • take 2 arguments
 #    • evaluate them in 2 different containers 
 #    • if both of them are true return false 
 #    • if one is true and another is false return true


 # syntactical layer : 

    def xor(arg1, arg2)
      return false if arg1 == false && arg2 == false
      arg1 && arg2 ? false : true 
    end 
 

    
