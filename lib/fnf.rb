require 'rubygems'
require 'eventmachine'
require 'typhoeus'
require 'msgpack'
require 'fifowriter/fifowriter'

module Fnf
  autoload :Fifo,       'fnf/fifo'
  autoload :Connection, 'fnf/connection'
  autoload :Worker,     'fnf/worker'
  autoload :Client,     'fnf/client'
end
