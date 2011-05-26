$: << "./lib"
require 'fnf'

Fnf::Client.queue(:get => "http://127.0.0.1:3000/asdd")
