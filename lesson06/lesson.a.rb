#!/usr/bin/env ruby
require 'octokit'
require 'json'

client = Octokit::Client.new :netrc => true

# What did I do today?
# https://developer.github.com/v3/activity/events/#list-events-performed-by-a-user

# Get events for the current user
events = client.user_events(client.user.login)

# Let's take a look at the most recent event
puts JSON.pretty_generate(events[0].to_attrs)
