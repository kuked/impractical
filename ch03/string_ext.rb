module StringExt
  refine String do
    def count_each_chars
      hash = Hash.new(0)
      self.chars.each { |c| hash[c] += 1 }
      hash
    end
  end
end
