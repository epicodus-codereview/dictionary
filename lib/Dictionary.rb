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


end# end class
