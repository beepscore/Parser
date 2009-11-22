require 'rubygems'
require 'open-uri'
require 'nokogiri'

# Perform a google search
#doc = Nokogiri::HTML(open('http://google.com/search?q=tenderlove'))

# doc.class will be Nokogiri::XML::Document
doc = Nokogiri::XML(open('iTunes Music Librarytest.xml'))
#puts "doc.class = #{doc.class}"

# Print out each link using an xml selector
# puts doc.child.node_name()
# puts doc.children

# Search for nodes by xpath
# doc.children().each do |a_tag|
#   puts a_tag.content
# end

a = doc.search("/plist[1]/dict[1]/dict[1]/key[2]")
b = doc.search("/plist[1]/dict[1]/dict[1]/dict[2]")
c = doc.search("/plist[1]/dict[1]/dict[1]/key[3]")
d = doc.search("/plist[1]/dict[1]/dict[1]/dict[3]")

puts a,b
puts c,d

# find all tags with a key of Artist
# Search for nodes by xpath
puts doc.search('/*/*/*/*/key[. = "Artist"]')

doc.xpath('/*/*/*/*/key[. = "Artist"]').each do |a_tag|
  puts a_tag.content
  puts a_tag.parent.content
end

puts "*** Bon Jovi ***"
doc.xpath('/*/*/*/*/string[. = "Bon Jovi"]').each do |a_tag|
  puts a_tag.content
  # puts a_tag.child.content
end









