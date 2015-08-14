class Definition

  @@all_definitions = []

  attr_reader(:definition, :definition_id)

  def initialize(definition)
    @definition = definition
    @definition_id = @@all_definitions.length.+(1)
  end

    def save
      @@all_definitions.push(self)
    end

    define_singleton_method(:all) do
      @@all_definitions
    end

    define_singleton_method(:define_find) do |identification|
      found_definition = nil
      @@all_definitions.each() do |description|
        if description.definition_id().eql?(identification.to_i())
          found_definition = description
        end
      end
      found_definition
    end

end#end class
