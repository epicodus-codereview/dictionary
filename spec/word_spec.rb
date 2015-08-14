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

end#ends the spec
