require('rspec')
require('pry')
require('review1')

describe ('the class') do
  it('Checks if an input letter "a" is the same as "a" and returns a bool') do
    word = Anagram.new('a', 'a')
    expect(word.anagram()).to(eq("The words a and a are anagrams!"))
  end

  it('Checks if an input letter "b" is the different than "a" and returns a bool') do
    word = Anagram.new('a', 'b')
    expect(word.anagram()).to(eq("FAKE WORDS. Get some vowels. Pathetic. I have great vowels. People love my vowels."))
  end

  it('Checks if a single word passed through twice are the same') do
    word = Anagram.new('dog', 'dog')
    expect(word.anagram()).to(eq("The words dog and dog are anagrams!"))
  end

  it('Checks if two single word non-anagrams are different') do
    word = Anagram.new('dog', 'cat')
    expect(word.anagram()).to(eq("The words dog and cat are not anagrams :( But! You found an antigram. They dont share any letters in common."))
  end

  it('Checks if two single word anagrams are different') do
    word = Anagram.new('dog', 'god')
    expect(word.anagram()).to(eq("The words dog and god are anagrams!"))
  end

  it('Checks if two single word anagrams are the same with dufferent upper case letters') do
    word = Anagram.new('Dog', 'God')
    expect(word.anagram()).to(eq("The words Dog and God are anagrams!"))
  end

  it('Checks if two single word non-anagrams are the same with dufferent upper case letters') do
    word = Anagram.new('Dog', 'Cat')
    expect(word.anagram()).to(eq("The words Dog and Cat are not anagrams :( But! You found an antigram. They dont share any letters in common."))
  end

  it('Checks if a single-word and multi-word are anagrams (different upper case letters)') do
    word = Anagram.new('Dormitory', 'dirty room')
    expect(word.anagram()).to(eq("The words Dormitory and dirty room are anagrams!"))
  end

  it('Checks if a single-word and multi-word are anagrams (different upper case letters)') do
    word = Anagram.new('Dormitory', 'dirty apartment')
    expect(word.anagram()).to(eq("The words Dormitory and dirty apartment are not anagrams :("))
  end

  it('Checks if both words have vowels or a y)') do
    word = Anagram.new('Zxv', 'vxz')
    expect(word.anagram()).to(eq("FAKE WORDS. Get some vowels. Pathetic. I have great vowels. People love my vowels."))
  end

  it('Removes all non-alpha characters') do
    word = Anagram.new('d123948-1834-$%$@^#&#$#$o%$^#%54637g', 'dog')
    expect(word.anagram()).to(eq("The words dog and dog are anagrams!"))
  end

  it('Detects an antigram of one letter') do
    word = Anagram.new('a', 'b')
    expect(word.antigram()).to(eq("This is an antigram"))
  end

  it('Detects an antigram of two words with the same number of letters') do
    word = Anagram.new('ab', 'cd')
    expect(word.antigram()).to(eq("This is an antigram"))
  end

  it('Detects an antigram of two words that contain two or more of the same letter') do
    word = Anagram.new('aabbbc', 'dddeeeeefff')
    expect(word.antigram()).to(eq("This is an antigram"))
  end

  it('Detects an antigram of two words that contain two or more of the same letter') do
    word = Anagram.new('aabbbc', 'bbbbbbbccd')
    expect(word.antigram()).to(eq("This is not an antigram"))
  end

  it('Detects an antigram of two words that contain two or more of the same letter') do
    word = Anagram.new('abc', 'def')
    expect(word.anagram()).to(eq("The words abc and def are not anagrams :( But! You found an antigram. They dont share any letters in common."))
  end

  it('Detects an antigram of two words that contain two or more of the same letter') do
    word = Anagram.new('abc def', 'ghi jkl')
    expect(word.anagram()).to(eq("The words abc def and ghi jkl are not anagrams :( But! You found an antigram. They dont share any letters in common."))
  end
end
