module StringExt
  refine String do
    def color_red
      "\e[31m#{self}\e[0m"
    end

    def count_each_char
      hash = Hash.new(0)
      self.chars.each { |c| hash[c] += 1 }
      hash
    end
  end
end
