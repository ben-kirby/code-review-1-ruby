class Anagram
  def initialize(word1, word2)
    @userWord1 = word1
    @userword2 = word2
  end

  def anagram
#remove all non-alpha characters
    anagramWord1 = @userWord1.gsub(/[^a-zA-Z]/, '')
    anagramWord2 = @userword2.gsub(/[^a-zA-Z]/, '')

#convert to array
    wordArray1 = anagramWord1.split("")
    wordArray2 = anagramWord2.split("")

#check for vowels
    if (wordArray1.detect{ |e| e == 'a' || e == 'e' || e == 'i' || e == 'o' || e == 'u' || e == 'y'}) &&
       (wordArray2.detect{ |e| e == 'a' || e == 'e' || e == 'i' || e == 'o' || e == 'u' || e == 'y'})

    #change all to upper case
      wordArray1.map!{ |e| e.upcase }
      wordArray2.map!{ |e| e.upcase }

    #sort alphabetically
      wordArray1.sort!{ |a, b| a <=> b }
      wordArray2.sort!{ |a, b| a <=> b }

    #prep for antigram checking


    #check if theyre equal
      if wordArray1 == wordArray2
        true
      else
        false
      end

    else
      "FAKE WORDS. Get some vowels. Pathetic. I have great vowels. People love my vowels."
    end
  end

  def antigram
    antigram1 = @userWord1
    antigram2 = @userword2

    antiarray1 = antigram1.split("")
    antiarray2 = antigram2.split("")

    antiarray1.uniq!
    antiarray2.uniq!
    # binding.pry

    totallength = antiarray1.length + antiarray2.length
    antiarray1.concat(antiarray2)
    antiarray1.uniq!
    uniquelength = antiarray1.length
    if uniquelength == totallength
      "This is an antigram"
    else
      "This is not an antigram"
    end
  end
end
