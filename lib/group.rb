module Jobless
  class Group
    attr_reader :items, :name, :type

    def initialize(name, type=nil)
      @name = name
      @type = type
      @items = []
    end

    def item(&block)
      item = Item.new
      item.instance_eval &block
      @items.push item
    end

    alias_method :entry, :item
  end
end
