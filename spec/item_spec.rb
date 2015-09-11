require 'item'

describe Jobless::Item do
  let(:item) { Jobless::Item.new }

  describe '#title' do
    it 'stores correct value' do
      item.title 'My first job'
      expect(item.data).to eq(title: 'My first job')
      expect(item.title).to eq('My first job')
    end
  end

  describe '#company' do
    it 'stores correct value' do
      item.company 'GitHub'
      expect(item.data).to eq(company: 'GitHub')
      expect(item.company).to eq('GitHub')
    end
  end

  describe '#homepage' do
    it 'stores correct value' do
      item.homepage 'http://google.com'
      expect(item.data).to eq(homepage: 'http://google.com')
      expect(item.homepage).to eq('http://google.com')
    end
  end

  describe '#technologies' do
    it 'stores correct value' do
      item.technologies 'Ruby, COBOL'
      expect(item.data).to eq(technologies: 'Ruby, COBOL')
      expect(item.technologies).to eq('Ruby, COBOL')
    end
  end

  describe '#description' do
    it 'stores correct value' do
      item.description 'Lorem ipsum dolor sem.'
      expect(item.data).to eq(description: 'Lorem ipsum dolor sem.')
      expect(item.description).to eq('Lorem ipsum dolor sem.')
    end
  end

  describe '#start_date' do
    it 'stores correct value' do
      item.start_date 'June 2014'
      expect(item.data).to eq(start_date: 'June 2014')
      expect(item.start_date).to eq('June 2014')
    end
  end

  describe '#end_date' do
    it 'stores correct value' do
      item.end_date 'July 2015'
      expect(item.data).to eq(end_date: 'July 2015')
      expect(item.end_date).to eq('July 2015')
    end
  end
end
