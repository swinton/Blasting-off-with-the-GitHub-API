# For IRB goodness... Consider adding the following to your ~/.irbrc:
require 'octokit'

class Object
    def github
        Octokit::Client.new :netrc => true
    end
end
