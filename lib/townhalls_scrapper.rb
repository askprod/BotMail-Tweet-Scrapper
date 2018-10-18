require "nokogiri"
require "open-uri"
require "json"
require "pry"

class Scrapper 
 attr_accessor :url06, :url56, :url83

    def initialize(urls)
        @url06 = "http://annuaire-des-mairies.com/alpes-maritimes.html"
        @url56 = "http://annuaire-des-mairies.com/morbihan.html"
        @url83 = "http://annuaire-des-mairies.com/var.html"
        @urls = [url06, url56, url83]
    end

    def townhall_names(array)
        array.map do |url|
            doc = Nokogiri::HTML(open(url))
            doc.css("a.lientxt").map do |keys| 
            keys.text
            end
        end
    end

    def townhall_mails(array)
        array.map do |url|
            doc = Nokogiri::HTML(open(url))
            doc.css("a.lientxt/@href").map{|keys| keys.text}.map{|keys2| keys2.slice(1..-1)}.map{|url| "http://annuaire-des-mairies.com#{url}"}.map do |full_url| 
                begin
                doc = Nokogiri::HTML(open(full_url)) 
                doc.css('body > div > main > section:nth-child(2) > div > table > tbody > tr:nth-child(4) > td:nth-child(2)').text
                rescue
                end
            end
        end
    end

    def perform
    townhall_name = townhall_names(@urls).flatten
    townhall_emails = townhall_mails(@urls).flatten
    townhall_info = Hash[townhall_name.zip(townhall_emails)]
    return townhall_info
    end

end

