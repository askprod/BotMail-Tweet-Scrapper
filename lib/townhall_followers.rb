
require 'pry'
require 'rubocop'
require 'dotenv'
require 'twitter'
require 'json'

Dotenv.load

class Twit

    def twittos
        
        client = Twitter::REST::Client.new do |config|
            config.consumer_key        = ENV["key1"]
            config.consumer_secret     = ENV["key2"]
            config.access_token        = ENV["key3"]
            config.access_token_secret = ENV["key4"]

            end
        
        # On va chercher le fichier .JSON
        file = File.read("./../db/townhalls.json")
        data_hash = JSON.parse(file)
        name_city = data_hash.keys # On récupère chaque key du hash pour pouvoir les utiliser derrière (les keys correspondent aux noms)

        name_city.each do |valeur| # Pour chaque nom, on cherche "ville de le_nom_de_la_ville" sur twitter

            @resultats_username = []
            @chaque_mairie = client.user_search("ville de #{valeur}")
            @resultats_username << @chaque_mairie

            i = 0
            @resultats_username.each do # pour chaque section de résultats, on met une méthode pour suivre.

            first_result = @resultats_username[0].first #ici, on prend le premier résultat des recherches (le plus accurate)
            puts "#{first_result} followed !"

            begin
                client.follow(first_result) # on suit ce handle !
                sleep(5)

            rescue => error
                
            end

            i += 1
            if i % 15 == 0      # si on dépasse les 15 follow d'affilé, ça se met en pause pour 15min
                                # --> correspond aux restrictions posées par Twitter en terme de bots
                puts "Went to sleep for 15min"
                sleep(900)
                end
            end
        end
    end
end
