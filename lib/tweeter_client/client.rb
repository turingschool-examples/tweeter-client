require 'faraday'
require 'json'
require_relative 'poster'

module TweeterClient
  class Client
    attr_reader :connection

    def initialize(host)
      @connection = Faraday.new(:url => host)
    end

    def find_poster(id)
      data = JSON.parse( @connection.get("/posters/#{id}").body )
      Poster.new(data)
    end
  end
end
