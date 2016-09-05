# Lesson 08

## Resources
- https://developer.github.com/webhooks/
- https://developer.github.com/v3/activity/events/types/#createevent
- https://developer.github.com/v3/repos/branches/#update-branch-protection


## Update branch protection

To access the Protected Branch API during the preview period, you must provide a custom media type in the `Accept` header:

```
application/vnd.github.loki-preview+json
```

https://developer.github.com/v3/repos/branches/#update-branch-protection

```
PUT /repos/:owner/:repo/branches/:branch/protection
```

1. Create a new branch, `protected-branch`
```
git push origin master:protected-branch
```
2. Protect that branch
```
http PUT \
    https://api.github.com/repos/universetrainingday/Blasting-off-with-the-GitHub-API/branches/protected-branch/protection \
    Accept:application/vnd.github.loki-preview+json \
    < protection.json
```
