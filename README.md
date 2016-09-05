# Blasting Off with the GitHub API :rocket:
New to API development? Come and get a boost with this guided tour of the GitHub API. You'll learn what's possible, and pick up some reusable code you can apply to your own projects, while following best practices.

## Lessons

### Lesson 1
Using the browser, make a few unauthenticated requests, talk about JSON, point out the JSONView extension for Chrome.

### Lesson 2
Make similar API requests using the command line, e.g. `curl`. Talk about alternative tools, e.g. [HTTPie](http://httpie.org/), [`jq`](https://stedolan.github.io/jq/). Talk about response headers vs. the body.

### Lesson 3
Talk about rate-limiting, demonstrate using `ab`. Talk about rate limits when authenticated vs. not.

### Lesson 4
Talk about authentication, basic, OTP, OAuth, personal access tokens. How to generate them, how to store them, how to use them. Generate a personal access token. Set up a `~/.netrc`, talk about how HTTPie will automatically use this.

### Lesson 5
Show a Bash script, that leverages HTTPie and jq to audit everyone who has access to a repository, generate a CSV report.

### Lesson 6
Introduce Octokit. Show some boilerplate code for using Octokit that also references the `~/.netrc`. Use `irb` to show how useful it is to interact with the API. Set up a `~/.irbrc` that instantiates an Octokit client automatically.

### Lesson 7
Create a script that creates a daily log of all my GitHub activity (`daily_ships.rb`). Convert the script into a web app, e.g. using Sinatra.

### Lesson 8
Configure a webhook to call your web app, using [`lt`](https://localtunnel.github.io/www/) to expose your local app to the web. Let the web app respond to a webhook event by changing something on GitHub, e.g. protect a branch based on some naming convention.

### Lesson 9
Talk about other resources exposed by the GitHub API.

### Lesson 10
Talk about other useful tools for API development, e.g.

- [httpbin.org](https://httpbin.org/)
- [ngrok](https://ngrok.com/)
- [Charles](https://www.charlesproxy.com/)
- …
