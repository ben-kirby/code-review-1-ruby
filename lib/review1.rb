class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram
    array1 = []
    array2 = []

#convert to array
    array1 = @word1.split("")
    array2 = @word2.split("")

#check for vowels
    if (array1.detect{ |e| e == 'a' || e == 'e' || e == 'i' || e == 'o' || e == 'u' || e == 'y'}) &&
       (array2.detect{ |e| e == 'a' || e == 'e' || e == 'i' || e == 'o' || e == 'u' || e == 'y'})
     #get rid of spaces
      array1.reject!{ |e| e == " " }
      array2.reject!{ |e| e == " " }

    #change all to upper case
      array1.map!{ |e| e.upcase }
      array2.map!{ |e| e.upcase }

    #sort alphabetically
      array1.sort!{ |a, b| a <=> b }
      array2.sort!{ |a, b| a <=> b }

    #check if theyre equal
      if array1 == array2
        true
      else
        false
      end
    else
      "FAKE WORDS. Get some vowels. Pathetic. I have great vowels. People love my vowels."
    end
  end
end
