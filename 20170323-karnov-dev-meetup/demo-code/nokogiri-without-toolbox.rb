require 'bundler/setup'
require 'nokogiri'

xml = ARGF.read
doc =  Nokogiri::XML.parse(xml, nil, 'utf-8', Nokogiri::XML::ParseOptions::DTDVALID)

puts doc

if doc.errors.any?
  puts "\n"*3
  puts doc.errors
end
