require 'group'
require 'item'

describe Jobless::Group do
  subject(:group) { Jobless::Group.new("Other experience") }

  describe '#initialize' do
    context 'infers type from name' do
      it { expect(group.type).to eq('other-experience') }
    end
  end

  describe '#item' do
    it 'creates a new item' do
      expect do
        group.item do
        end
      end.to change { group.items.count }.from(0).to(1)
    end
  end
end
