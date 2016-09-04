# Blasting Off with the GitHub API
New to API development? Come and get a boost with this guided tour of the GitHub API. You'll learn what's possible, and pick up some reusable code you can apply to your own projects, while following best practices.

## Lessons

### Lesson 1
Using the browser, make a few unauthenticated requests, point out the JSONView extension for Chrome. Maybe talk about the Chrome Developer Tools?

### Lesson 2
Make similar API requests using the command line, e.g. `curl`. Talk about alternative tools, e.g. HTTPie, jq. Talk about response headers.

### Lesson 3
Talk about rate-limiting, demonstrate using `ab`. Talk about rate limits when authenticated vs. not.

### Lesson 4
Talk about authentication, basic, OTP, OAuth, personal access tokens. How to generate them, how to store them, how to use them.

### Lesson 5
Use a script, e.g. Bash, using the personal access token. Script idea, audit everyone who has access to a repository, generate a CSV.

### Lesson 6
Introduce an API library, e.g. Octokit. Show some boilerplate code for using Octokit, run an example Ruby script. Consider using `irb` to show how useful it is to interact with the API. Create a script that creates a daily log of all my GitHub activity.

### Lesson 7
Convert the script into a web app, e.g. using Sinatra. Using `ngrok`, access the local web app from anywhere on the web.

### Lesson 8
Configure a webhook to call your web app. Let the web app respond to a webhook event by changing something on GitHub, e.g. protect a branch based on some naming convention.

### Lesson 9
Talk about other resources exposed by the GitHub API.

### Lesson 10
Talk about other useful tools for API development.
