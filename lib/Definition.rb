class Definition

  # @@all_definitions = []

  attr_reader(:definition)

  def initialize(definition)
    @definition = definition
    # @definition_id = @@all_definitions.length.+(1)
  end

  # def save
  #   @@all_definitions.push(self)
  # end

  # define_singleton_method(:all) do
  #   @@all_definitions
  # end

  # define_singleton_method(:define_find) do |identification|
  #   found_definition = nil
  #   @@all_definitions.each() do |description|
  #     if description.definition_id().eql?(identification.to_i())
  #       found_definition = description
  #     end
  #   end
  #   found_definition
  # end

end#end class

# indentation fixed lines 12-28
# also removed unneeded Definition methods and class variable. (The user does not need to be able to see a list of all definitions or find a specific definition. Instead, on a word's details page you should be able to see all definitions that belong to that word. You should be adding a definition to a word by calling the word's add_definition method. There is no need to have a list of all definitions, etc. We also don't actually need an id for definition in this case, as we never need to use it to find a specific definition. In other words, the ONLY way we use definitions is to store them in a word object and display them that way.)