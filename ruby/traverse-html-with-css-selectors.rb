#!/Users/jearsh/.rvm/rubies/ruby-2.0.0-p247/bin/ruby

require 'open-uri'
require 'nokogiri'

url = 'http://www.gooddrama.net/popular-shows/1'

doc = open(url)

html = Nokogiri::HTML(doc)

nodes = html.css('.right_col')

# break if nodes.empty?

nodes.each do |node|
  break

  node.to_a
  node.attr('class')
  node.inner_text
  node.text

  node.first(3)
  node.last
  node.length

  matching_child_nodes = node.css('.search_children')
  first_matching_node  = node.at_css('.search_children')

end

__END__

:nmap ,f :/__END__/r!ruby "%"<cr>
