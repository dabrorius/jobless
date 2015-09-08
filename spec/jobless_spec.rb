require 'jobless'

describe Jobless do
  describe "personal data" do
    let(:file_content) { File.read('test_cv.html') }
    before do
      Jobless.cv('test_cv.html') do
        name 'John doe'
        location 'Zagreb'
        address 'Candy Street 9'
        homepage 'http://google.com'
        email 'mail@example.com'
      end
    end

    it "embedds name" do
      expect(file_content).to include('John doe')
    end
    it "embedds location" do
      expect(file_content).to include('Zagreb')
    end
    it "embedds address" do
      expect(file_content).to include('Candy Street 9')
    end
    it "embedds homepage" do
      expect(file_content).to include('http://google.com')
    end
    it "embedds email" do
      expect(file_content).to include('mail@example.com')
    end
  end
end
