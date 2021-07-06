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

    self.split.each_with_object([]) do |segment, array|
      if segment.sentence?
        array << segment
      elsif segment.question?
        array << segment
      elsif segment.exclamation?
        array << segment
      end
    end.count
    
  end

end