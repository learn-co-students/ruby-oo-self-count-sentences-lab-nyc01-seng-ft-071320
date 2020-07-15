require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end 
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end 
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end 
  end

  def count_sentences
    self.split.each_with_object([]) do |testy, array|
      if testy.question? == true
        array << testy 
      elsif testy.sentence? == true 
        array << testy 
      elsif testy.exclamation? == true 
        array << testy 
      end      
    end.count 
  end
end