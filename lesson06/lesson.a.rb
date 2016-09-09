#!/usr/bin/env ruby
require 'octokit'

# Super simple example: https://api.github.com/zen
puts Octokit.get "zen"
