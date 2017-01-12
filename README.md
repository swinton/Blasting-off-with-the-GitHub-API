# Blasting Off with the GitHub API :rocket:

We [blasted off with the GitHub API](https://vimeo.com/187090493/63178811e6) in San Francisco, on **September 13<sup>th</sup>**, **2016**, at **[GitHub Universe Training Day](githubuniverse.com/program/#training)**.

Check out [the Vimeo recording](https://vimeo.com/187090493/63178811e6), and get a head start with our guided tour of the GitHub API.

You'll learn what's possible, and pick up some reusable code you can apply to your own projects, while following best practices.

## Running the lessons

To run the lessons in this repo, navigate to the corresponding lesson sub-directory and run the `lesson` script within (e.g. to run Lesson 08: `cd lesson03 && ./lesson`).

## :rocket: Launch

### Lesson 0
- What is an API?
- Why even API?
- Why use the GitHub API?
- Introduction to the GitHub API

## :earth_americas: Orbit
### Lesson 1
- Making requests with your browser
  - Interacting with the API

### Lesson 2
- Diving a little deeper
  - More on that command line, though
  - Some example requests with cURL

### Lesson 3
- Raising rate limits
    - Rate limits are a fact of life in the wonderful world of APIs, here's how to live in harmony with them

### Lesson 4
- Being authentic with the API
    - Different authentication methods
    - Generating and storing a personal access token

### Lesson 5
- Let's [Octokit](https://github.com/octokit/octokit.rb)! :boom:

### Lesson 6
- Create a script that creates a daily log of all your GitHub activity
  - dailyships.rb
    - Convert the script into a web app

### Lesson 7
- What is a webhook and why is it not an API?
- Webhooks and GitHub
  - Configure a webhook to call your web app
    - Test it by changing something on GitHub

## :octocat: Flight
### Lesson 8
- Other resources exposed by the GitHub API

### Lesson 9
- Other useful tools for API development
    - Paw
        - https://paw.cloud/
        - Feature-rich API client (MacOS only)
    - Postman
        - https://www.getpostman.com/
        - Another feature-rich API client, available cross-platform, as a Chrome extension
    - ngrok
        - https://ngrok.com/
        - Secure tunnels to localhost
    - Charles
        - https://www.charlesproxy.com/
        - HTTP proxy / HTTP monitor / Reverse proxy to view all HTTP and SSL/HTTPS traffic
    - HTTPbin
        - https://httpbin.org/
        - HTTP request and response service, useful for validating what you're sending to an API
        - :warning: Be careful not to leak your access token
