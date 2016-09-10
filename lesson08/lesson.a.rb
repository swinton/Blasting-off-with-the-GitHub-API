#!/usr/bin/env ruby
require 'octokit'

client = Octokit::Client.new :netrc => true

# Update branch protection API
# https://developer.github.com/v3/repos/branches/#update-branch-protection

# Let's protect the 'protected-branch' branch...
repo = 'universetrainingday/Blasting-off-with-the-GitHub-API'
branch = 'protected-branch'
options = {
    :required_status_checks => {
      :include_admins => true,
      :strict => true,
      :contexts => []
    },
    :restrictions => {
      :users => [
        'swinton',
        'allthedoll'
      ],
      :teams => []
    },
    # Because this is a preview API:
    :accept => 'application/vnd.github.loki-preview+json'
}

# Use the lower-level Octokit API methods, because rubygems...
response = client.put "#{Octokit::Repository.path repo}/branches/#{branch}/protection", options

if client.last_response.status == 200
    puts "Branch protected!!! 🎉 "
end
