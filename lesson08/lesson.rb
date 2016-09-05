#!/usr/bin/env ruby
require 'octokit'

client = Octokit::Client.new :netrc => true

# Protect branch
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
response = client.put "#{Octokit::Repository.path repo}/branches/#{branch}/protection", options
puts response
