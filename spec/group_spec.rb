require 'group'
require 'item'

describe Jobless::Group do
  let(:group) { Jobless::Group.new("Experience") }

  describe '#item' do
    it 'creates a new item' do
      expect do
        group.item do
        end
      end.to change { group.items.count }.from(0).to(1)
    end
  end
end
