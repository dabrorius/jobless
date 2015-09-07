require 'document'
require 'group'

describe Jobless::Document do
  let(:document) { Jobless::Document.new }

  describe '#name' do
    it 'stores correct value' do
      document.name 'John Doe'
      expect(document.data).to eq(name: 'John Doe')
      expect(document.name).to eq('John Doe')
    end
  end

  describe '#location' do
    it 'stores correct value' do
      document.location 'Zagreb, Croatia'
      expect(document.data).to eq(location: 'Zagreb, Croatia')
      expect(document.location).to eq('Zagreb, Croatia')
    end
  end

  describe '#address' do
    it 'stores correct value' do
      document.address 'Blue Street 72b'
      expect(document.data).to eq(address: 'Blue Street 72b')
      expect(document.address).to eq('Blue Street 72b')
    end
  end

  describe '#homepage' do
    it 'stores correct value' do
      document.homepage 'http://google.com'
      expect(document.data).to eq(homepage: 'http://google.com')
      expect(document.homepage).to eq('http://google.com')
    end
  end

  describe '#email' do
    it 'stores correct value' do
      document.email 'email@example.com'
      expect(document.data).to eq(email: 'email@example.com')
      expect(document.email).to eq('email@example.com')
    end
  end

  describe '#group' do
    it 'creates a new group' do
      expect do
        document.group 'Experience' do
        end
      end.to change { document.groups.count }.from(0).to(1)
      expect(document.groups[0].name).to eq 'Experience'
    end
  end

  describe '#employment' do
    it 'creates a new group' do
      expect do
        document.employment do
        end
      end.to change { document.groups.count }.from(0).to(1)
      expect(document.groups[0].name).to eq 'Employment'
    end
  end

  describe '#education' do
    it 'creates a new group' do
      expect do
        document.education do
        end
      end.to change { document.groups.count }.from(0).to(1)
      expect(document.groups[0].name).to eq 'Education'
    end
  end

  describe '#open_source' do
    it 'creates a new group' do
      expect do
        document.open_source do
        end
      end.to change { document.groups.count }.from(0).to(1)
      expect(document.groups[0].name).to eq 'Open source'
    end
  end

  describe '#other_experience' do
    it 'creates a new group' do
      expect do
        document.other_experience do
        end
      end.to change { document.groups.count }.from(0).to(1)
      expect(document.groups[0].name).to eq 'Other experience'
    end
  end
end

