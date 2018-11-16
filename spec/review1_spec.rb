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
  end
