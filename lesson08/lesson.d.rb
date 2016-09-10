#!/usr/bin/env ruby
require 'sinatra'
require 'json'
require 'octokit'

client = Octokit::Client.new :netrc => true

get '/' do
    'Hello, world'
end

post '/nom' do
    # Parse our JSON
    data = JSON.parse(request.body.read)

    # Was a branch just created?
    # Did that branch begin with 'protected-'
    if data['ref_type'] == 'branch' && \
            data['ref'].start_with?('protected-')
        # Protect that branch
        repo = 'universetrainingday/Blasting-off-with-the-GitHub-API'
        branch = data['ref']
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
            puts "Branch #{branch} protected!!! 🎉 "
        end
    end
end


pipe = IO.popen("lt --port 4567 --subdomain blastingoff")
Signal.trap("INT") do
    Process.kill("INT", pipe.pid)
end
