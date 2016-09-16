#!/usr/bin/env ruby
require 'sinatra'
require 'json'

get '/' do
    'Hello, world'
end

post '/nom' do
  data = JSON.parse(request.body.read)
  puts "I got some JSON:\n#{JSON.pretty_generate(data)}"
end


pipe = IO.popen("lt --port 4567 --subdomain blastingoff")
Signal.trap("INT") do
    Process.kill("INT", pipe.pid)
end

puts "Try me:\nhttp POST https://blastingoff.localtunnel.me/nom < protection.json"
