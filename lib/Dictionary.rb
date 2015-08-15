class Word

  @@all_words  = []

  attr_reader(:word, :word_id, :definition)

  def initialize 
    @word = word
    @word_id = @@all_words.length.+(1)
    @definition = []
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
    @definition.push(definition)
  end

end# end class
