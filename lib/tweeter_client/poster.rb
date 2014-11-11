module TweeterClient
  class Poster
    attr_reader :name

    def initialize(data)
      @name = data["name"]
    end
  end
end
