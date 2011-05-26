module Fnf

  class Wrapper
    include FifoWriter
  end
  
  WRAPPER = Wrapper.new
  
  class Client

    attr_accessor :url, :verb, :params
    
    def self.queue(hsh)
      verb = get_verb(hsh)
      url = hsh[verb]
      params = hsh[:params]
      WRAPPER.write_to_fifo [verb,url,params].to_json
    end


    def self.get_verb(hsh)
      [:delete, :get, :post, :put, :head].each do |verb|
        return verb if hsh[verb]
      end
    end

  end
end

