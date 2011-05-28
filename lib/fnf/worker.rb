module Fnf

  module RequestWorker
    def initialize(pipe)
      @pipe = pipe
      @buff = []
    end

    def notify_readable
      payload = MessagePack.unpack(@pipe.readline.chomp)
      EventMachine::HttpRequest.new(payload[1]).send(payload[0], :query => payload[2])
    end
  end

  class Worker
    def self.run
      pipe = Fifo.new('/tmp/fnfq')
      EventMachine::run do
        EventMachine::watch(pipe.to_io, RequestWorker, pipe) do |c|
          c.notify_readable = true
        end
      end
    end
  end
end

