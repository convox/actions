# Convox Run Action
This Action runs a [One-off Command](https://docs.convox.com/management/one-off-commands) using a specific release of an app on Convox. A typical use case of this action would be to run migrations or a similar pre-deploy or post-deploy command.

## Inputs
### `rack`
**Required** The name of the [Convox Rack](https://docs.convox.com/introduction/rack) containing the app you wish to run the command against
### `app`
**Required** The name of the [app](https://docs.convox.com/deployment/creating-an-application) you wish to run the command against
### `service`
**Required** The name of the [service](https://docs.convox.com/application/services) to run the command against
### `command`
**Required** The command you wish to run
### `release`
**Optional** The ID of the [release](https://docs.convox.com/deployment/releases) you wish to run the command against. This ID is output as `release` by the [Build](../build) action. Only needed if you have not run a build step first or you wish to override the release id from the build step
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
  uses: convox/actions/run@v1
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