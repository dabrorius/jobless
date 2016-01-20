module Jobless
  class Item
    attr_reader :data, :bulletins

    PERSONAL_ATTRIBUTES = %w(
      title
      company
      homepage
      technologies
      description
      start_date
      end_date
    ).freeze

    def initialize
      @data = {}
      @bulletins = []
    end

    # Define methods for setting personal data
    PERSONAL_ATTRIBUTES.each do |attribute_name|
      define_method(attribute_name) do |attribute = nil|
        if attribute
          @data[attribute_name.to_sym] = attribute
        else
          @data[attribute_name.to_sym]
        end
      end
    end

    def bulletin(content)
      @bulletins.push content
    end
  end
end
