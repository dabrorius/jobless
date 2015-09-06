require 'erb'

class CVML
  def initialize
    @data = { personal_data: {} }
  end

  def self.personal_attribute(attribute_name)
    define_method(attribute_name) do |attribute|
      @data[:personal_data][attribute_name] = attribute
    end
  end

  def self.personal_attributes(*attributes)
    attributes.each do |attribute|
      personal_attribute(attribute)
    end
  end

  personal_attributes :name, :location, :homepage, :email

  def write_to_file(filename)
    renderer = ERB.new(File.read("template.html.erb"))
    generated_html = renderer.result(binding)
    File.open(filename, 'w') do |file|
      file.write(generated_html)
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
  email "filip.defar@gmail.com"
end
