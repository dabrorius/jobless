require 'erb'

module Jobless
  class Document
    attr_reader :groups, :data

    def initialize
      @data = {}
      @groups = []
      @template = File.expand_path("../template/template.html.erb", __FILE__)
      @stylesheet = File.expand_path("../template/style.css", __FILE__)
    end

    # Define methods for setting personal data
    %w(name location address homepage email).each do |attribute_name|
      define_method(attribute_name) do |attribute=nil|
        if attribute
          @data[attribute_name.to_sym] = attribute
        else
          @data[attribute_name.to_sym]
        end
      end
    end

    def group(name, type=nil, &block)
      group = Group.new(name, type)
      group.instance_eval &block
      @groups.push group
    end

    def employment(&block)
      group("Employment", :employment, &block)
    end

    def education(&block)
      group("Education", :education, &block)
    end

    def open_source(&block)
      group("Open source", :open_source, &block)
    end

    def other_experience(&block)
      group("Other experience", :other_experience, &block)
    end

    def template(template)
      @template = template
    end

    def stylesheet(file_path)
      @stylesheet = file_path
    end

    def css
      File.read(@stylesheet)
    end

    def write_to_file(filename)
      renderer = ERB.new(File.read(@template))
      generated_html = renderer.result(binding)
      File.open(filename, 'w') do |file|
        file.write(generated_html)
      end
    end
  end
end
