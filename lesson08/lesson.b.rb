#!/usr/bin/env ruby
require 'sinatra'
require 'json'


post '/nom' do
  data = JSON.parse(request.body.read)
  puts "I got some JSON:\n#{JSON.pretty_generate(data)}"
end

puts "Try me:\nhttp POST http://localhost:4567/nom < protection.json"
