require 'rubygems'
require 'open-uri'
require 'nokogiri'

# Perform a google search
#doc = Nokogiri::HTML(open('http://google.com/search?q=tenderlove'))
#doc = Nokogiri::HTML(open('http://google.com/search?q=edaya'))
doc = Nokogiri::XML(open('http://api.wunderground.com/auto/wui/geo/WXCurrentObXML/index.xml?query=kbfi'))
puts doc
# Print out each link using an xml selector
puts doc.child.child.node_name()


