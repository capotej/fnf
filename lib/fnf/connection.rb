module Fnf
  module Connection

    ConnectionError = Class.new(StandardError)

    extend self

    def http
      Typhoeus::Request
    end

    [:get, :post, :put, :delete].each do |verb|
      define_method verb do |path, *args|

        params = args.last || {}

        response  = http.send(verb, path, :params => params)
                      
        result    = parse(response.b)

        unless [200,201].include?(response.code)
          msg = result.nil? ? response.body : "#{result.error} #{result.message}"
          raise ConnectionError, msg 
        end

        result
      end
    end

  end
end
