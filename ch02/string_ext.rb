module StringExt
  refine String do
    # determine whether a string is a palindrome.
    # https://www.khanacademy.org/computing/computer-science/algorithms/recursive-algorithms/a/using-recursion-to-determine-whether-a-word-is-a-palindrome
    def palindrome?
      return true if self.size == 1 or self.size == 0
      if self[0] == self[-1]
        return self[1..-2].palindrome?
      else
        return false
      end
    end
  end
end
