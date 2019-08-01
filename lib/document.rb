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
      phone
      github
      blog
    ).freeze

    GROUP_NAMES = %w(
      employment
      education
      open_source
      other_experience
      work_experience
      summary
      skills
      projects
      awards
    ).freeze

    def initialize
      @data = {}
      @groups = []
      @template = File.expand_path('../template/template.html.erb', __FILE__)
      @stylesheet = File.expand_path('../template/style.css', __FILE__)
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

    def group(name, &block)
      group = Group.new(name)
      group.instance_eval(&block)
      @groups.push(group)
    end

    GROUP_NAMES.each do |group_name|
      define_method(group_name) do |&block|
        group(group_name.titleize, &block)
      end
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
