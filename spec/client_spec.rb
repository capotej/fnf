require 'spec_helper'

describe Fnf::Client do
  describe "#get_verb" do

    [:delete, :get, :post, :put, :head].each do |verb|
      
      it "should extract #{verb}" do
        Fnf::Client.get_verb(verb => "http://www.example.com").should equal(verb)
      end

    end

  end

end
