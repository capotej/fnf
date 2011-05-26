$: << "./lib"
require 'fnf'

start_dt = Time.now
100.times do |i|
  Fnf::Client.queue(:get => "http://127.0.0.1:3000/#{i}#{ARGV[0]}")
end
end_dt = Time.now

puts (end_dt.to_f - start_dt.to_f)
