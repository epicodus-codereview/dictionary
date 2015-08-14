class Dictionary

  @@all_words  = []

  attr_reader(:word, :word_id)

  def initialize(word)
    @word = word
    @word_id = @@all_words.length.+(1)
  end

  def save
    @@all_words.push(self)
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_singleton_method(:clear) do
    @@all_words = []
  end

  define_singleton_method(:word_find) do |identification|
    found_word = nil
    @@all_words.each() do |word|
      if word.word_id().eql?(identification.to_i())
        found_word = word
      end
    end
    found_word
  end
end# end class
