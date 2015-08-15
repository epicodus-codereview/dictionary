class Word

  @@all_words  = []

  attr_reader(:word, :word_id, :definitions)

  def initialize (word) # you need to accept the word parameter that you are using on line 8 to initialize the word
    @word = word
    @word_id = @@all_words.length.+(1)
    @definitions = []
  end

  def save
    @@all_words.push(self)
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_singleton_method(:word_find) do |identification|
    found_word = nil
    @@all_words.each() do |dictionary|
      if dictionary.word_id().eql?(identification.to_i())
        found_word = dictionary
      end
    end
    found_word
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

  # add clear method needed to clear everything between spec runs
  define_singleton_method(:clear) do
    @@all_words = []
  end

end# end class
