module Fnf
  class Client
    attr_accessor :url, :verb, :params
    
    def self.queue(hsh)
      verb = get_verb(hsh)
      params = hsh[:params]
      url = hsh[verb]
    end

    def self.get_verb(hsh)
      [:delete, :get, :post, :put, :head].each do |verb|
        return verb if hsh[verb]
      end
    end

  end
end

