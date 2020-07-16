require 'pry'

class String

  def sentence?
    if self[-1] == "."
      true
    else
      false
    end
  end

  def question?
    if self[-1] == "?"
      true
    else
      false
    end
  end

  def exclamation?
    if self[-1] == "!"
      true
    else
      false
    end
  end

  def count_sentences
    self.split(/[.?!]+/).count
  end
end


# complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo...