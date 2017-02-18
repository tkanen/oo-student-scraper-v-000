require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    index_url = Nokogiri::HTML(open("http://students.learn.co/"))

    student_scraper = []

    index_url.css("div.student_card").each do |student|
      name = student.css("h4.student-name").text
      location = student.css("p.student-location")
    end
    student_scraper
  end

  def self.scrape_profile_page(profile_url)

  end

end
