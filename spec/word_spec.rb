require('rspec')
require('dictionary')

describe(Dictionary) do

  describe('#word') do
    it('returns the word') do
      test_word = Dictionary.new("apple")
      expect(test_word.word()).to(eq("apple"))
    end
  end

  describe('#save') do
  it('saves the word') do
    test_word = Dictionary.new("apple")
    test_word.save()
    expect(Dictionary.all()).to(eq([test_word]))
  end
end

  describe('.clear') do
    it('removes all the words') do
      test_word = Dictionary.new("apple")
      expect(Dictionary.clear()).to(eq([]))
    end
  end

  describe('#word_id') do
    it('gives the added word an id') do
    test_word = Dictionary.new("apple")
    test_word.save()
    expect(test_word.word_id()).to(eq(1))
  end
end



end#ends the spec
