require 'document'

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

end

