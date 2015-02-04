require 'pry'

class ParagraphTruncator
  attr_accessor :paragraph
  
  def initialize
    @paragraph
  end
  
  def concatParagraph(concatedparagraph)
    #paragraph receives the paragraph passed in by the user
    paragraph = concatedparagraph

    #turn_paragraph_into_an_array simply splits paragraph into array indices of 60 characters for the first, and no more than 60 for the rest
    turn_paragraph_into_an_array = paragraph.scan(/.{60}/)
    
    #We concat the first array position with ... at the end. We only care about the first position. When they click the dropdown (or read more), it will display all of the text.
    turn_paragraph_into_an_array[0].concat('...')
    
    puts turn_paragraph_into_an_array
    
  end
    
end

thing = ParagraphTruncator.new
thing.concatParagraph("Ok, here's a pargraph with five sentences. Here's the second. Here's the third. Here's the fourth. Here's the fifth.")


binding.pry


#  Ok, here's a pargraph with five sentences. Here's the second. Here's the third. Here's the fourth. Here's the fifth.