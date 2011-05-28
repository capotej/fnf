$: << "./lib"
require 'fnf'

start_dt = Time.now
2000.times do |i|
  Fnf::Client.queue(:get => "http://127.0.0.1:1337/#{i}")
end
end_dt = Time.now
puts (end_dt.to_f - start_dt.to_f)


