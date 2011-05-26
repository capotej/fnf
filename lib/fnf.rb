require 'daemons'
require 'fifo'
require 'json'
require 'eventmachine'
require 'em-http-request'

module Fnf
  autoload :Worker, 'fnf/worker'
  autoload :Client, 'fnf/client'
end
