#!/usr/bin/env ruby
require 'octokit'

# Super simple example: https://api.github.com/zen
response = Octokit.get "zen"

# Just echo the response
puts "Response: #{response}"
