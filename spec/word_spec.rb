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

end#ends the spec
