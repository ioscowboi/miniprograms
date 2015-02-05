require 'pry'
require 'active_support'
require 'active_support/all'
#The purpose of this class is to truncate a paragraph so that it can be previewed on the screen
class ParagraphTruncator

  def concatParagraph(concatedparagraph)
    #paragraph receives the paragraph passed in by the user
    paragraph = concatedparagraph
  
    #.truncate is an active_support method that automatically truncates a paragraph after a given number of characters provided in parenthesis
    puts paragraph.truncate(60)
    
  end
    
end

thing = ParagraphTruncator.new
thing.concatParagraph("Ok, here's a pargraph with five sentences. Here's the second. Here's the third. Here's the fourth. Here's the fifth.")


binding.pry


#  Ok, here's a pargraph with five sentences. Here's the second. Here's the third. Here's the fourth. Here's the fifth.