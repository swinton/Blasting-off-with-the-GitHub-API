# Lesson 02

## Diving a little deeper
- Next steps, diving a little deeper from the command line
    - :question: Should we find out what OS everyone is using? Windows, Mac, Linux, etc?
    - There comes a point where your browser will only get you so far. To go a little deeper, we need to drop down to the command line
    - Hopefully you have [curl](https://curl.haxx.se/) installed, or if not, can install it pretty easily
        - For example, curl can be installed on Windows with [Chocolatey](https://chocolatey.org/), alternatively it comes installed with GitHub Desktop for Windows
    - Some example requests with curl
        - `curl https://api.github.com/zen`
        - `curl -i https://api.github.com/users/octocat`
            - Note some interesting headers, `X-RateLimit-Limit`, `X-RateLimit-Remaining`
    - Some other favorite command line tools of ours are:
        1. [httpie](http://httpie.org), a user friendly replacement for curl
            - `http https://api.github.com/users/octocat`
            - Note, syntax highlighting, headers included by default
        1. [jq](https://stedolan.github.io/jq/), amazingly useful tool for *processing* JSON from the command-line
            - **TODO**: Quick example jq command
