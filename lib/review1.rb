class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram
    array1 = []
    array2 = []

    array1 = @word1.split("")
    array2 = @word2.split("")

    if (array1.detect{ |e| e == "a" || e == "e" || e == "i" || e == "o" || e == "u" || e == "y"})
      array1.reject!{ |e| e == " " }
      array2.reject!{ |e| e == " " }

      array1.map!{ |e| e.upcase }
      array2.map!{ |e| e.upcase }

      array1.sort!{ |a, b| a <=> b }
      array2.sort!{ |a, b| a <=> b }
      if array1 == array2
        true
      else
        false
      end
    end

  end
end
