#!/usr/bin/env ruby
# coding: utf-8

require 'nokogiri'

if __FILE__ == $0
  abort "Not enough arguments" if ARGV.length < 1

  headerparsed = false

  ARGV.each do |arg|
    doc = Nokogiri::HTML( File.open( arg ))

    trs = doc.xpath( "//table//tr" )
    
    trs.each do |tr| 
      unless ( tr > "th" ).empty? or headerparsed
        puts ( tr > "th" ).map { |th| '"'+th.text.strip+'"' }.join( ',' )
	headerparsed = true
      end
      unless ( tr > "td" ).empty?
        puts ( tr > "td" ).map { |td| '"'+td.text.strip+'"' }.join( ',' )
      end
    end

  end
end
