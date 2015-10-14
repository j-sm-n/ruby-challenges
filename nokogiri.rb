require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))

search = doc.css('.directions-item-text')
puts search

list = doc.css('.directions-item-text').inner_html
puts list