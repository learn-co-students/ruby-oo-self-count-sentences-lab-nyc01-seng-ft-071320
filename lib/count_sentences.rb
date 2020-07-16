require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    i = 0
    j = 1
    arr = self
    arr1 = self.split(/\?|\.|!/)
    arr2 = arr.split("")
    while i < arr2.length
      if arr2[i] == arr2[j]
        arr2.delete_at(j)
      end  
      i += 1
      j += 1
    end
    #binding.pry
    joined = arr2.join
    #binding.pry
    punctSplit = joined.split(/\?|\.|!/)
    punctSplit.count
  end
end