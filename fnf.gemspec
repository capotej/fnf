$:.push File.expand_path("../lib", __FILE__)
require "fnf/version"

Gem::Specification.new do |s|
  s.name        = "fnf"
  s.version     = Fnf::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Julio Capote"]
  s.email       = ["jcapote@gmail.com"]
  s.homepage    = "http://www.github.com/capotej/fnf"
  s.summary     = %q{Fire And Forget, a queue designed for disposable web requests}
  s.description = %q{ Fire and Forget replaces the need to write resque tasks or delayed jobs to fire off web requests (usually notification webhooks or a anti-spam service, like defensio or akismet). A single worker reads and executes web requests from a blocking named pipe, while clients queue up them up in a non blocking manner. It uses typhoeus internally to execute the web requests for maximum speed.}

  s.rubyforge_project = "fnf"

  s.add_dependency 'eventmachine'
  s.add_dependency 'msgpack'
  s.add_dependency 'typhoeus'

  s.platform = Gem::Platform::RUBY
  
  s.extensions = Dir["ext/**/extconf.rb"]
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
