# Ref http://wiki.github.com/tenderlove/nokogiri/examples
require 'rubygems'
require 'nokogiri'

parent = Nokogiri::HTML.parse(<YOUR HTML GOES HERE>).css('body').first

# start_here is given: A Nokogiri::XML::Element of the <div> with the id 'foo' and the class 'block'
@start_here = parent.at('div.block#foo')

# Search for previous element of kind "_style" starting from _start_element
def search_for_ previous_element(_start_element, _style)
  unless _start_element.nil?
    # have we already found what we're looking for?
    if _start_element.name == _style
      return _start_element
    end
    # _start_element is a div.block and not the _start_element itself
    if _start_element[:class] == "block" && _start_element[:id] != @start_here[:id]
      # begin recursion with last child inside div.block
      from_child = search_for_ previous_element(_start_element.children.last, _style)
      if(from_child)
        return from_child
      end
    end
    # begin recursion with previous element
    from_child = search_for_ previous_element(_start_element.previous, _style) 
    return from_child ? from_child : false
  else
    return false
  end
end

# A Nokogiri::XML::Element of the nearest, previous h1.
previous_element_h1 = search_for_previous_element(@start_here,"h1")

puts previous_element_h1

