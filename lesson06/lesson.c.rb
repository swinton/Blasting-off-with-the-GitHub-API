#!/usr/bin/env ruby
require 'octokit'
require 'date'

# This time, with authentication
client = Octokit::Client.new :netrc => true

# Make a request
# Who am I again?
whoami = client.user

# Let's inspect some response headers...

# How many requests remaining?
remaining = client.last_response.headers['x-ratelimit-remaining'].to_i

# When does it reset?
reset = client.last_response.headers['x-ratelimit-reset'].to_i

# How many minutes away is that?
reset = Time.at(reset).to_datetime
now = Time.now.to_datetime
minutes = ((reset - now) * 24 * 60).to_i

puts "Remaining requests: #{remaining}.\nResets in #{minutes} minutes."
