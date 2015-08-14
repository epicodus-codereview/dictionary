require('rspec')
require('dictionary')

describe(Dictionary) do

  describe('#word') do
    it('returns the word') do
      test_word = Dictionary.new("apple")
      expect(test_word.word()).to(eq("apple"))
    end
  end


end#ends the spec
