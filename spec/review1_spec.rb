require('rspec')
require('pry')
require('review1')

describe ('the class') do
  it('Checks if an input letter "a" is the same as "a" and returns a bool') do
      word = Anagram.new('a', 'a')
    expect(word.checker()).to(eq(true))
    end

    it('Checks if an input letter "b" is the different than "a" and returns a bool') do
        word = Anagram.new('a', 'b')
      expect(word.checker()).to(eq(false))
      end

    it('Checks if a single word passed through twice are the same') do
        word = Anagram.new('dog', 'dog')
      expect(word.checker()).to(eq(true))
      end

    it('Checks if two single word non-anagrams are different') do
        word = Anagram.new('dog', 'cat')
      expect(word.checker()).to(eq(false))
      end

    it('Checks if two single word non-anagrams are different') do
        word = Anagram.new('dog', 'god')
      expect(word.checker()).to(eq(true))
      end

    it('Checks if two single word non-anagrams are the same with dufferent upper case letters') do
        word = Anagram.new('Dog', 'God')
      expect(word.checker()).to(eq(true))
      end

    it('Checks if two single word non-anagrams are the same with dufferent upper case letters') do
        word = Anagram.new('Dog', 'Cat')
      expect(word.checker()).to(eq(false))
      end
  end
