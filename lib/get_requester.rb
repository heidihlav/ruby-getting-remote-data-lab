require 'open-uri'
require 'net/http'
require 'json'

class GetRequester

  attr_accessor :url
  
  def initialize(url)
    @url = url  
  end

  def get_response_body
    @url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"  
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    requests = JSON.parse(self.get_response_body)
    requests.collect { |request| request}
  end





end