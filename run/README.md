# Convox Run Action
This Action runs a [One-off Command](https://docs.convox.com/management/one-off-commands) using a specific release of a previously built app on Convox. A typical use case of this action would be to run migrations or a similar pre-deploy or post-deploy command.

## Inputs
### `rack`
**Required** The name of the [Convox Rack](https://docs.convox.com/introduction/rack) you wish to deploy to.
### `app`
**Required** The name of the [app](https://docs.convox.com/deployment/creating-an-application) you wish to deploy.
### `command`
**Required** The command you wish to run
### `release`
**Optional** The ID of the [release](https://docs.convox.com/deployment/releases) you wish to promote. This ID is output as `release` by the [Build](../build) action. Only needed if you have not run a build step first or you wish to override the release id from the build step
## Example usage
```
steps:
- name: login
  uses: convox/actions/login@v1
  with:
    password: ${{ secrets.CONVOX_DEPLOY_KEY }}
- name: build
  id: build
  uses: convox/actions/build@v1
  with:
    rack: staging
    app: myapp
- name: run
  uses: convox/actions/promote@v1
  with:
    rack: staging
    app: myapp
    service: web
    command 'rake db:migrate'
- name: promote
  uses: convox/actions/promote@v1
  with:
    rack: staging
    app: myapp
```