class Anagram
  def initialize(word1, word2)
    @userWord1 = word1
    @userword2 = word2
  end

  def anagram
    array1 = []
    array2 = []

#remove all non-alpha characters
    anagramWord1 = @userWord1.gsub(/[^a-zA-Z]/, '')
    anagramWord2 = @userword2.gsub(/[^a-zA-Z]/, '')

#convert to array
    array1 = anagramWord1.split("")
    array2 = anagramWord2.split("")

#check for vowels
    if (array1.detect{ |e| e == 'a' || e == 'e' || e == 'i' || e == 'o' || e == 'u' || e == 'y'}) &&
       (array2.detect{ |e| e == 'a' || e == 'e' || e == 'i' || e == 'o' || e == 'u' || e == 'y'})

     #get rid of spaces

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
