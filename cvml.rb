require 'erb'

class CVML
  def initialize
    @data = { personal_data: {}, groups: [] }
  end

  # Define methods for setting personal data
  %w(name location homepage email).each do |attribute_name|
    define_method(attribute_name) do |attribute|
      @data[:personal_data][attribute_name.to_sym] = attribute
    end
  end

  def group(name, &block)
    group = CVML::Group.new(name)
    group.instance_eval &block
    @data[:groups].push group
  end

  def write_to_file(filename)
    renderer = ERB.new(File.read("template.html.erb"))
    generated_html = renderer.result(binding)
    File.open(filename, 'w') do |file|
      file.write(generated_html)
    end
  end
end

class CVML::Group
  attr_reader :items, :name

  def initialize(name)
    @name = name
    @items = []
  end

  def item(&block)
    item = CVML::Item.new
    item.instance_eval &block
    @items.push item
  end
end

class CVML::Item
  attr_reader :data

  def initialize
    @data = {}
  end

  # Define methods for setting personal data
  %w(position time_span description).each do |attribute_name|
    define_method(attribute_name) do |attribute=nil|
      if attribute.nil?
        @data[attribute_name.to_sym]
      else
        @data[attribute_name.to_sym] = attribute
      end
    end
  end
end

def CV(&block)
  instance = CVML.new
  instance.instance_eval &block
  instance.write_to_file("result_cv.html")
end


CV do
  name "Filip Defar"
  email "dabrorius@gmail.com"
  group "Work experience" do
    item do
      position "Rails developer"
      description "It was very cool"
    end
  end
end
