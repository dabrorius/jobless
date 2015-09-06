require 'erb'

module CVML
  class Document
    attr_reader :groups

    def initialize
      @data = {}
      @groups = []
    end

    # Define methods for setting personal data
    %w(name location homepage email).each do |attribute_name|
      define_method(attribute_name) do |attribute=nil|
        if attribute
          @data[attribute_name.to_sym] = attribute
        else
          @data[attribute_name.to_sym]
        end
      end
    end

    def group(name, &block)
      group = Group.new(name)
      group.instance_eval &block
      @groups.push group
    end

    def employment(&block)
      group("Employment", &block)
    end

    def education(&block)
      group("Education", &block)
    end

    def open_source(&block)
      group("Open source contributions", &block)
    end

    def other_experience(&block)
      group("Other experience", &block)
    end

    def write_to_file(filename)
      renderer = ERB.new(File.read("template.html.erb"))
      generated_html = renderer.result(binding)
      File.open(filename, 'w') do |file|
        file.write(generated_html)
      end
    end
  end

  class Group
    attr_reader :items, :name

    def initialize(name)
      @name = name
      @items = []
    end

    def item(&block)
      item = Item.new
      item.instance_eval &block
      @items.push item
    end
  end

  class Item
    attr_reader :data

    def initialize
      @data = {}
    end

    # Define methods for setting personal data
    %w(position time_span description).each do |attribute_name|
      define_method(attribute_name) do |attribute=nil|
        if attribute
          @data[attribute_name.to_sym] = attribute
        else
          @data[attribute_name.to_sym]
        end
      end
    end
  end

  def CV(&block)
    instance = Document.new
    instance.instance_eval &block
    instance.write_to_file("result_cv.html")
  end
end

include CVML
CV do
  name "Filip Defar"
  email "dabrorius@gmail.com"

  employment do
    item do
      position "Rails developer"
      description "It was very cool"
    end
  end

  education do
    item do
      position "Bahelor dagree"
      description "It was very cool"
    end
    item do
      position "Master's dagree"
      description "It was very cool"
    end
  end

  open_source do
    item do
      position "Rails developer"
      description "It was very cool"
    end
  end
end
