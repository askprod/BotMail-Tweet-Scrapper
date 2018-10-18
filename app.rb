require "bundler"
require "json"

$:.unshift File.expand_path("./../lib", __FILE__)
require 'townhalls_scrapper'


temp_hash = Scrapper.new(@urls).perform
File.open("./db/townhalls.JSON","w") do |f|
  f.write(temp_hash.to_json)
end

