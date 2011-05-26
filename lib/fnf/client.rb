module Fnf
  class Client
    attr_accessor :url, :verb, :params
    
    def self.queue(hsh)
#      verb = get_verb(hsh)
#      url = hsh[verb]
#      params = hsh[:params]
      pipe = Fifo.new('/tmp/fnfq', :w, :nowait)
      pipe.puts hsh#[verb,url,params].to_json
    end

    def self.get_verb(hsh)
      [:delete, :get, :post, :put, :head].each do |verb|
        return verb if hsh[verb]
      end
    end

  end
end

