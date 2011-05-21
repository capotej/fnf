require 'typhoeus'
require 'daemons'
require 'fifo'

module Fnf
  autoload :Connection, 'fnf/connection'
  autoload :Worker, 'fnf/worker'
  autoload :Client, 'fnf/client'
end
