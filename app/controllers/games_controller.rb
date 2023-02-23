require 'uri'
require 'net/http'
require 'openssl'


class GamesController < ApplicationController
    def index
      url = URI("https://heisenbug-premier-league-live-scores-v1.p.rapidapi.com/api/premierleague/team?name=Liverpool")
  
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  
      request = Net::HTTP::Get.new(url)
      request["X-RapidAPI-Key"] = 'e32ac445e6msh34a1aa4e3b8ab24p1ad76cjsn528d9475314b'
      request["X-RapidAPI-Host"] = 'heisenbug-premier-league-live-scores-v1.p.rapidapi.com'
  
      response = http.request(request)
      puts response.read_body
      @team_data = JSON.parse(response.read_body)
    end
  
end
