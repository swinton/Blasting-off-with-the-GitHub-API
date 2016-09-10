#!/usr/bin/env ruby
require 'octokit'
require 'json'
require 'date'

client = Octokit::Client.new :netrc => true

# What did I do today?
# https://developer.github.com/v3/activity/events/#list-events-performed-by-a-user

# Get events for the current user
events = client.user_events client.user.login

# Trim events to those generated today
class Time
    def today?()
        [self.day, self.month, self.year] ==
        [Time.now.day, Time.now.month, Time.now.year]
    end
end

todays_events = events.select do |ev|
    ev[:created_at].today?
end

# TODO
# Paginate over previous events

# Report on events
puts "I did #{todays_events.length} things on GitHub today."
