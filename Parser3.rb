require 'rubygems'
require 'open-uri'
require 'nokogiri'

# Perform a google search
#doc = Nokogiri::HTML(open('http://google.com/search?q=tenderlove'))
#doc = Nokogiri::HTML(open('http://google.com/search?q=edaya'))
doc = Nokogiri::HTML(open('http://api.wunderground.com/auto/wui/geo/WXCurrentObXML/index.xml?query=kbfi'))
puts doc
# Print out each link using a CSS selector
# doc.css('h3.r > a.l').each do |link|
#   puts link.content
# end

doc.xml('node > a.l').each do |link|
  puts link.content
end

