require './scraper.rb'
describe 'Tests' do
  describe '#Nokogiri' do
    describe '#Scrape' do
      it 'should return Nokogiri HTML document' do
        doc = Nokogiri::HTML(open("http://www.google.com/"))
        doc.should be_kind_of Nokogiri::HTML::Document
      end
    end
  end
  
  describe '#Scraper class' do
    
    it "#new method should return an instance" do 
      Scraper.new("http://www.google.com").should be_kind_of Scraper
    end
    
    it "#new should set a Nokogiri HTML document" do
      @scraper = Scraper.new("http://www.google.com/")
      @scraper.doc.should be_kind_of Nokogiri::HTML::Document
    end
    
    describe "construct cities hash" do
    
      it '' do
        @scraper = Scraper.new("http://www.groupon.com/jdfs")  
        
      end
    
    end
  end
end