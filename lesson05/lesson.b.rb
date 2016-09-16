#!/usr/bin/env ruby
require 'octokit'

# This time, with authentication
client = Octokit::Client.new :netrc => true

# Who am I?
# https://api.github.com/user tells us
whoami = client.user
puts "I am: #{whoami.login}."
