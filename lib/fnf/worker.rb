module Fnf

  module RequestWorker
    def initialize(pipe)
      @pipe = pipe
    end

    def notify_readable
      data = @pipe.readline.chomp
      fetch = proc {
        payload = MessagePack.unpack(data)
        Connection.send(payload[0], payload[1], payload[2])
      }
      noop = proc { }
      EM.defer fetch, noop

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

