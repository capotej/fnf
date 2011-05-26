module Fnf
  
  module RequestWorker
    def initialize(pipe)
      @pipe = pipe
    end

    def notify_readable
      puts @pipe.readline
      sleep 2
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

