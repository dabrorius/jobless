require_relative 'document'
require_relative 'group'
require_relative 'item'

module Jobless
  def self.cv(filename = "cv.html", &block)
    instance = Document.new
    instance.instance_eval &block
    instance.write_to_file(filename)
  end

  def self.generate_resume
    path = File.expand_path("../example_cv.rb", __FILE__)
    content = File.read(path)
    example_file_name = "resume.rb"
    File.write(example_file_name, content)
    puts "Jobless has generated an example resume."
    puts "created: #{example_file_name}"
  end

  def self.generate_template
    path = File.expand_path("../template.html.erb", __FILE__)
    content = File.read(path)
    example_file_name = "template.html.erb"
    File.write(example_file_name, content)
    puts "Jobless has generated an example template. Feel free to modify it."
    puts "created: #{example_file_name}"
  end

  def self.help
    puts "Usage"
    puts "\tjobless new - creates an example resume script"
    puts "\tjobless template - copies a local template"
  end
end

