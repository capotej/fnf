require 'rubygems'
require 'daemons'
require 'fifo'
require 'json'
require 'eventmachine'
require 'typhoeus'
require 'em-http-request'
require 'msgpack'
require 'fifowriter/fifowriter'

module Fnf
  autoload :Connection, 'fnf/connection'
  autoload :Worker, 'fnf/worker'
  autoload :Client, 'fnf/client'
end
