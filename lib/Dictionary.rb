class Dictionary

  @@all_words  = []

  attr_reader(:word)

  def initialize(word)
    @word = word
    @word_id = @@all_words.length.+(1)
  end




end# end class
