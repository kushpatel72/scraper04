require 'nokogiri'
require 'open-uri'


class Scraper
  attr_accessor :doc
  def initialize uri
    @doc = Nokogiri::HTML(open(uri))
    
  end
end



