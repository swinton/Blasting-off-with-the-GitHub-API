# Lesson 06

## Leveling up with Octokit
Introduce Octokit. Show some boilerplate code for using Octokit that also references the `~/.netrc`. Use `irb` to show how useful it is to interact with the API. Set up a `~/.irbrc` that instantiates an Octokit client automatically.


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
