require 'jobless'

describe Jobless do
  let(:file_content) { File.read('test_cv.html') }
  after { File.delete('test_cv.html') }

  describe "personal data" do
    before do
      Jobless.cv('test_cv.html') do
        name 'John doe'
        location 'Zagreb'
        address 'Candy Street 9'
        homepage 'http://google.com'
        email 'mail@example.com'
      end
    end

    it "embeds name" do
      expect(file_content).to include('John doe')
    end

    it "embeds location" do
      expect(file_content).to include('Zagreb')
    end

    it "embeds address" do
      expect(file_content).to include('Candy Street 9')
    end

    it "embeds homepage" do
      expect(file_content).to include('http://google.com')
    end

    it "embeds email" do
      expect(file_content).to include('mail@example.com')
    end
  end

  describe "groups" do
    before do
      Jobless.cv('test_cv.html') do
        group "Example group" do
          entry do
            title "Entry name"
            company "GitHub"
            technologies "Ruby, Rails"
            description "Lorem ipsum dolor sem"
            bulletin "Bulletin 1"
            bulletin "Bulletin 2"
            start_date "June 2014"
            end_date "August 2015"
          end
        end
      end
    end

    it "embeds group name" do
      expect(file_content).to include('Example group')
    end

    it "embeds entry title" do
      expect(file_content).to include('Entry name')
    end

    it "embeds company" do
      expect(file_content).to include('GitHub')
    end

    it "embeds technologies" do
      expect(file_content).to include('Ruby, Rails')
    end

    it "embeds description" do
      expect(file_content).to include('Lorem ipsum dolor sem')
    end

    it "embeds bulletins" do
      expect(file_content).to include('Bulletin 1')
      expect(file_content).to include('Bulletin 2')
    end

    it "embeds start date" do
      expect(file_content).to include('June 2014')
    end

    it "embeds end date" do
      expect(file_content).to include('August 2015')
    end
  end 

  describe "custom CSS" do
    before do
      Jobless.cv('test_cv.html') do
        stylesheet File.expand_path("../fixtures/custom_style.css", __FILE__)
      end
    end
    it "embeds specified stylesheet" do
      expect(file_content).to include('border: 1px solid black;')
    end
  end
end
