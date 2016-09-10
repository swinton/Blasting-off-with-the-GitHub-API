#!/usr/bin/env ruby
require 'octokit'
require 'json'

client = Octokit::Client.new :netrc => true

# What did I do today?
# https://developer.github.com/v3/activity/events/#list-events-performed-by-a-user

# Get events for the current user
events = client.user_events(client.user.login)

# How many events?
puts "I got #{events.length} events."

# Let's go grab some more events
events.concat(client.last_response.rels[:next].get.data)

# How many events?
puts "I got #{events.length} events."
