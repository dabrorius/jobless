require 'spec_helper'
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

  describe '#phone' do 
    it 'stores correct value' do 
     document.phone '1-123-456-789'
     expect(document.data).to eq(phone: '1-123-456-789')
     expect(document.phone).to eq('1-123-456-789')
    end
  end

  describe '#github' do 
    it 'stores correct value' do 
      document.github 'https://github.com/johndoe'
      expect(document.data).to eq(github: 'https://github.com/johndoe')
      expect(document.github).to eq('https://github.com/johndoe')
    end
  end

  describe '#blog' do 
    it 'stores correct value' do 
      document.phone 'http://blog.example.com'
      expect(document.data).to eq(blog: 'http://blog.example.com')
     expect(document.blog).to eq('1-123-456-789')
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
    it 'calls #group with appropriate parameters' do
      expect(document).to receive(:group).
        with("Employment").and_yield
      document.employment do
      end
    end
  end

  describe '#education' do
    it 'calls #group with appropriate parameters' do
      expect(document).to receive(:group).
        with("Education").and_yield
      document.education do
      end
    end
  end

  describe '#open_source' do
    it 'calls #group with appropriate parameters' do
      expect(document).to receive(:group).
        with("Open Source").and_yield
      document.open_source do
      end
    end
  end

  describe '#other_experience' do
    it 'calls #group with appropriate parameters' do
      expect(document).to receive(:group).
        with("Other Experience").and_yield
      document.other_experience do
      end
    end
  end

  describe '#summary' do
    it 'calls #group with appropriate parameters' do
      expect(document).to receive(:group).
        with("Summary").and_yield
      document.summary do
      end
    end
  end
end

  describe '#skills' do
    it 'calls #group with appropriate parameters' do
      expect(document).to receive(:group).
        with("Skills").and_yield
      document.skills do
      end
    end
  end
  describe '#projects' do
    it 'calls #group with appropriate parameters' do
      expect(document).to receive(:group).
        with("Projects").and_yield
      document.projects do
      end
    end
  end
  describe '#awards' do
    it 'calls #group with appropriate parameters' do
      expect(document).to receive(:group).
        with("Awards").and_yield
      document.awards do
      end
    end
  end
  describe '#work_experience' do
    it 'calls #group with appropriate parameters' do
      expect(document).to receive(:group).
        with("Work Experience").and_yield
      document.work_experience do
      end
    end
  end
