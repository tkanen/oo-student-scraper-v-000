require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    index_page = Nokogiri::HTML(open("http://students.learn.co/"))

    student_scraper = []

    index_page.css("div.roster-cards-container").each do |card|
      card.css(".student-card a").each do |student|

    end
    student_scraper
  end

  def self.scrape_profile_page(profile_url)

  end

end
