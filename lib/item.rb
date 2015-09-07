module Jobless
  class Item
    attr_reader :data, :bulletins

    def initialize
      @data = {}
      @bulletins = []
    end

    # Define methods for setting personal data
    %w(title company homepage technologies description start_date end_date).each do |attribute_name|
      define_method(attribute_name) do |attribute=nil|
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
