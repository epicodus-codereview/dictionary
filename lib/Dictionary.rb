class Dictionary

  @@all_words  = []

  attr_reader(:word)

  def initialize(word)
    @word = word
    @word_id = @@all_words.length.+(1)
  end

  define_singleton_method(:all) do
    @@all_words
  end

  def save
    @@all_words.push(self)
  end

end# end class
