require 'erb'
require 'active_support/core_ext/string/inflections'

module Jobless
  class Document
    attr_reader :groups, :data

    PERSONAL_ATTRIBUTES = %w(
      name
      email
      location
      address
      homepage
    )

    def initialize
      @data = {}
      @groups = []
      @template = File.expand_path("../template/template.html.erb", __FILE__)
      @stylesheet = File.expand_path("../template/style.css", __FILE__)
    end

    # Define methods for setting personal data
    PERSONAL_ATTRIBUTES.each do |attribute_name|
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
      group("Open Source", &block)
    end

    def other_experience(&block)
      group("Other Experience", &block)
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
