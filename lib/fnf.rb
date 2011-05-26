require 'daemons'
require 'fifo'
require 'json'
require 'eventmachine'
require 'typhoeus'
require 'em-http-request'
$:.unshift File.expand_path("../../",__FILE__)
require 'fifowriter'

module Fnf
  autoload :Connection, 'fnf/connection'
  autoload :Worker, 'fnf/worker'
  autoload :Client, 'fnf/client'
end
