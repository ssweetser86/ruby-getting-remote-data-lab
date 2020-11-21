require 'open-uri'
require 'net/http'
require 'json'
require 'pry'

class GetRequester

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        Net::HTTP.get_response(uri).body
    end

    def parse_json
        JSON.parse(get_response_body)
    end

end
