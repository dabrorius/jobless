require_relative 'document'
require_relative 'group'
require_relative 'item'

module Jobless
  def self.cv(filename = "cv.html", &block)
    instance = Document.new
    instance.instance_eval &block
    instance.write_to_file(filename)
  end
end

