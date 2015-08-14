require('rspec')
require('dictionary')
require('definition')

describe(Word) do

  describe('#word') do
    it('returns the word') do
      test_word = Word.new("apple")
      expect(test_word.word()).to(eq("apple"))
    end
  end

  describe('#save') do
  it('saves the word') do
    test_word = Word.new("apple")
    test_word.save()
    expect(Word.all()).to(eq([test_word]))
  end
end

  describe('#word_id') do
    it('gives the added word an id') do
    test_word = Word.new("apple")
    test_word.save()
    expect(test_word.word_id()).to(eq(2))
  end
end

  describe('.word_find') do
  it("returns the word id") do
    test_word = Word.new("apple")
    test_word.save()
    test_word2 = Word.new("Banana")
    test_word2.save()
    expect(Word.word_find(test_word.word_id())).to(eq(test_word))
    end
  end
end

describe(Definition) do

  describe('#definition') do
    it('returns the definition') do
      test_definition = Definition.new("the round fruit of a tree of the rose family, which typically has thin red or green skin and crisp flesh")
      expect(test_definition.definition()).to(eq("the round fruit of a tree of the rose family, which typically has thin red or green skin and crisp flesh"))
    end
  end

describe('#save') do
  it('saves the definition') do
    test_definition = Definition.new("the round fruit of a tree of the rose family, which typically has thin red or green skin and crisp flesh")
    test_definition.save()
    expect(Definition.all()).to(eq([test_definition]))
  end
end

describe('#definition_id') do
  it('gives the added definition an id') do
    test_definition = Definition.new("the round fruit of a tree of the rose family, which typically has thin red or green skin and crisp flesh")
    test_definition.save()
    expect(test_definition.definition_id()).to(eq(2))
  end
end

describe('.definition_find') do
  it("returns the definition id") do
    test_definition = Definition.new("the round fruit of a tree of the rose family, which typically has thin red or green skin and crisp flesh")
    test_definition.save()
    test_definition2 = Definition.new("an iconic brand")
    test_definition2.save()
    expect(Definition.define_find(test_definition.definition_id())).to(eq(test_definition))
    end
  end

  describe('#add_definition') do
    it("adds a new definition to a word") do
      test_word = Word.new("Apple")
      test_definition = Definition.new("an iconic brand")
      test_word.add_definition(test_definition)
      expect(test_word.definition()).to(eq([test_definition]))
    end
  end

end
