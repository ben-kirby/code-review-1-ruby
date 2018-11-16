class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def checker
    if @word1 == @word2
      true
    else
      false
    end
  end
end
