# Lesson 06


## IRB
Consider adding the following to your `~/.irbrc`:

```ruby
require 'octokit'

class Object
    def github
        Octokit::Client.new :netrc => true
    end
end
```

Then in `irb`, you can just start using the API straight away, via `github`.
