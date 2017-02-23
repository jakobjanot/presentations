require 'bundler/setup'
require 'nokogiri'

require 'xml_toolbox'
XmlToolbox.utf8_catalog_resolver

xml = ARGF.read
doc =  Nokogiri::XML.parse(xml, nil, 'utf-8', Nokogiri::XML::ParseOptions::DTDVALID)

puts doc

puts "\n"*3
if doc.errors.any?
  puts doc.errors
else
  puts "No errors"
end
