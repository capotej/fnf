module Fnf

  class Fifo
    def initialize(file)
      if !File.exists?(file)
        File.mkfifo(file)
        File.chmod(0666, file)
      end
      @pipe = File.open(file, "r+")
    end

    def readline
      str = ""
      while ($_ = self.read(1)) != "\n"
        str << $_
      end
      str << "\n"
    end
    
    def to_io
      @pipe.to_io
    end

    def read(n)
      @pipe.read(n)
    end
    
  end

end
