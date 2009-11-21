require 'rubygems'
require 'open-uri'
require 'nokogiri'

# Perform a google search
#doc = Nokogiri::HTML(open('http://google.com/search?q=tenderlove'))
#doc = Nokogiri::HTML(open('http://google.com/search?q=edaya'))
doc = Nokogiri::XML(open('iTunes Music Librarytest.xml'))
#puts doc
# Print out each link using an xml selector
# puts doc.child.node_name()
# puts doc.children

# Search for nodes by xpath
# doc.children().each do |a_tag|
#   puts a_tag.content
# end

# note=doc.search("key") # find all tags with the node_name "key"
# puts note

# doc.xpath('/').each do |a_tag|
#   puts a_tag.content
# end

# Search for nodes by xpath
puts doc.xpath('/*/*/*/*/key[. = "Artist"]')



