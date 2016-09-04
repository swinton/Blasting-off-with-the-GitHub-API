# Lesson 01

## Making requests
- Interacting with the API
    - Let's dive right in...
        - In your browser, navigate to `https://api.github.com/`
        - Note, [the JSONView Chrome extension](https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc) makes it **a lot** easier to look at JSON in the browser
            - The API response lists available resources, and hints around how we can request them
            - Let's click around... `/emojis`, `/users/octocat`, `/gists/bac6677fb246546df4ce772709ddc657`, `/user`
            - Note, that last one returned an *Unauthorized* status, more on that later…
