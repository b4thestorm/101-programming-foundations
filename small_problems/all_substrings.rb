
#rewind when you get the chance
def all_strings(string)
  container = [] ; count = 0 
  while count < string.length 
    strings = string[count..-1] 
    container << substring(strings)
    count += 1
  end 
  container
end 

def substring(string)
  list = string.chars ; count = 0 ; container = []
  loop do 
    container << list[0 , count + 1]
   count += 1  
   break if count >= list.length
  end
  container
end 

 all_strings('knitting cassettes') 

