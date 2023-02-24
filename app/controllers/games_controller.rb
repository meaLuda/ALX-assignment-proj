require 'uri'
require 'net/http'
require 'openssl'


class GamesController < ApplicationController
    def index
      url = URI("https://premier-league-standings1.p.rapidapi.com/")

      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  
      request = Net::HTTP::Get.new(url)
      request["X-RapidAPI-Key"] = 'e32ac445e6msh34a1aa4e3b8ab24p1ad76cjsn528d9475314b'
      request["X-RapidAPI-Host"] = 'premier-league-standings1.p.rapidapi.com'
      
      response = http.request(request)
      puts "-------- response ----------"
      puts response.read_body
      @standings = JSON.parse(response.read_body)
    end
  
end
