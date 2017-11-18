# goal:  Write a method that takes two arguments, a positive integer and a boolean, and calculates the 
# bonus for a given salary. If the boolean is true, the bonus should be half of the salary.
# If the boolean is false, the bonus should be 0.

# LOGICAL LAYER:  

#    • get 2 args 
#    • check if boolean is true
#    • if boolean is true 
#    • divide first argument by half

# SYNTACTICAL LAYER:  

    def calculate_bonus(salary, approval)
      if approval
        "You get a bonus of: #{salary / 2}"
      else 
        "You get a bonus of: #{0}"
      end 
    end 
