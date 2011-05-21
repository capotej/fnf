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

        http.send(verb, path, :params => params)

      end
    end

  end
end
