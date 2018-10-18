require "bundler"
require "json"
require 'twitter'

$:.unshift File.expand_path("./../lib", __FILE__)
require 'townhalls_scrapper'
require 'townhall_followers'

$:.unshift File.expand_path("./../db", __FILE__)
require 'townhalls.json'



temp_hash = Scrapper.new(@urls).perform

File.open("./db/townhalls.JSON","w") do |f|
  f.write(temp_hash.to_json)
end

Twit.new.twittos # Le programme Twitter fonctionne en lui-même, individuellement, 
				 #mais pas ici (on ne sait pas pourquoi --> erreur sur le JSON)
