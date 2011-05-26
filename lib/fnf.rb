require 'typhoeus'
require 'daemons'
require 'fifo'
require 'json'
require 'eventmachine'

module Fnf
  autoload :Connection, 'fnf/connection'
  autoload :Worker, 'fnf/worker'
  autoload :Client, 'fnf/client'
end
