require 'pry'

#This program will take a string and format it into a proper sentence structure. Ex: Blue red green will read: Blue, red, and green.

class WordConnector
  #scrubber takes an an array called options and passes it into users_array
  def scrubber(options)
    users_array = []
    users_array = [options]
    
    #users_array is passed into chopper to add a comma and space at the end of each array. The space is there to avoid cutting off the comma.
    chopper   = users_array.join(", ")
    
    #addquotes takes the comma'd and space'd chopper array and splits it everywhere there is a space. This is done so that the first and last position in the array can be treated w/ quotes.
    addquotes = chopper.split(" ")
    
    #We find the length of the array so that we can get the position of the last array string.
    length    = addquotes.length - 1
    
    #Using he length - 1 of the array, we are now able to access the last position in the array and add a double quote to it.
    last = addquotes[length].concat("\"")
    
    #We reverse the array so that we can add 'and' to the beginning of it.
    last = last.reverse
    
    #Here, we need to add "and" differently depending on how many words there are. If there's less than 3 words, we don't need a space after the first and last, so we remove one of the
    #spaces.
    if length <= 1
      
      last = last.concat(" dna")
      
      #if there are more than 2 words, we need to add a space before and after the word "and" so that it looks more readable.
      
    elsif length >= 2
      last = last.concat(" dna ")
    end
    
    #We flip the last word back around in either case.
    last  = last.reverse
    
    #Now we address the first word. It is chopped up into its individual letters, reversed so that we can add a double quote to the beginning, and then flipped back around.
    #We add a space to the end of first in all cases because there will at least be one or two words passed in...
    first = addquotes[0].split('')
    first = first.reverse
    first = first << "\""
    first = first.reverse
    first = first.join.concat(" ")
  
    #We delete index[0] from the array because it is the untreated string. Now, the length of the array has changed. We need the new length of the array so that we can delete the 
    #untreated last index[lastposition] position in the array. Thus, we subtract one more from length because we have deleted one more from the array. Now we can accurately delete
    #the last array string from addquotes. We are left with the first string, the addquotes array (which is converted to a string using join), and the last string.
    length    = length - 1
    addquotes.delete_at(0)
    addquotes.delete_at(length)
    addquotes = addquotes.join(" ")
    
    finished  = first + addquotes + last

    puts finished
      
  end
end

tester = WordConnector.new
tester.scrubber(["Blue", "Red"])