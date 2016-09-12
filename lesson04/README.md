# :earth_americas: Lesson 04

## Being authentic with the API

So, you need to authenticate, but HOW? Fear not, we'll show ya...

### Lessons
1. Basic authentication, lowest barrier to entry, but... Anti pattern! Also, one-time passwords!
2. OAuth, what it is, when you might want to use it
3. Personal access tokens, how to get one, how to store one

## Specifics
- Different methods of authentications
    - Basic
        - Essentially just send your GitHub username and password along with every request
        - Have 2FA on? Need to send a _One Time Password_ with every request too
        - Sharing your password with apps is an antipattern, so...
    - OAuth :muscle:
        - A secure protocol for generating and sharing an access token with third parties
        - The GitHub API supports OAuth 2.0 which is simpler than earlier OAuth versions, basically requires all requests / responses are encrypted
        - Can provide varying levels of access to your stuff, via scopes
        - An access token is _like a password_, and you should treat it as such
    - Personal access token :heart:
        - This is what we'll use today
        - You can create an access token for your own personal use via GitHub.com
        - Where to store? Environment variable, or in a `~/.netrc` file
        - HTTPie will check your `~/.netrc` automatically, and if it finds an entry matching your request, it'll use it
