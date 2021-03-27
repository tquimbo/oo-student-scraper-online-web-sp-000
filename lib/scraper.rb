require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    students = []
    index_page = Nokogiri::HTML(open(index_url))
    index_page.css(".student-card").each do |student|
      hash = {}
      hash[:name] = student.css(".student-name").text
      hash[:location] = student.css(".student-location").text
      hash[:profile_url] = student.css("a").attribute("href").value
      students << hash
    end
    students
  end
 

  def self.scrape_profile_page(profile_url)

   

  end

