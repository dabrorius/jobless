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

  def print
    puts @data
  end
end

def CV(&block)
  instance = CVML.new
  instance.instance_eval &block
end


CV do
  name "Filip Defar"
  email "filip.defar@gmail.com"
  print
end
