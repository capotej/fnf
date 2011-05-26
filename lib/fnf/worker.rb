module Fnf
  class Worker

    def self.run
      pipe = Fifo.new('/tmp/fnfq')
      while contents = pipe.readline
        begin
          payload = JSON.parse(contents)
          Connection.send(payload[0], payload[1], payload[2])
        rescue
        end
      end
    end
  end
end

