
require 'pry'
require 'rubocop'
require 'dotenv'
require 'twitter'
require 'json'

Dotenv.load


def twittos
    
    client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV["key1"]
        config.consumer_secret     = ENV["key2"]
        config.access_token        = ENV["key3"]
        config.access_token_secret = ENV["key4"]
    end
     

        name_city = ["Lille", "La Rochelle", "Bordeaux", "Paris"]
        # file = File.read("townhalls.json")
        # data_hash = JSON.parse(file)
        # name_city = data_hash.keys

        name_city.each do |valeur|

            @resultats_username = []
            @chaque_mairie = client.user_search("ville de #{valeur}")
            @resultats_username << @chaque_mairie

            # puts @resultats_username[0].first

            i = 0
            @resultats_username.each do

            first_result = @resultats_username[0].first
            puts first_result

            begin
                client.follow(first_result)
                sleep(5)

            rescue => error
            
            end

         i += 1
         if i % 15 == 0
                puts "Went to sleep for 15min"
                sleep(900)
            end
        end
    end

end

twittos