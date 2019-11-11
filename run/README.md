# Convox Run Action
This Action runs a [One-off Command](https://docs.convox.com/management/one-off-commands) using a specific release of a previously built app on Convox. A typical use case of this action would be to run migrations or a similar pre-deploy or post-deploy command.

## Inputs
### `password`
**Required** The value of your [Convox Deploy Key](https://docs.convox.com/console/deploy-keys)
### `host`
**Optional** The host name of your [Convox Console](https://docs.convox.com/introduction/console). This defaults to `console.convox.com` and only needs to be overwritten if you have a [self-hosted console](https://docs.convox.com/reference/hipaa-compliance#run-a-private-convox-console)
### `rack`
**Required** The name of the [Convox Rack](https://docs.convox.com/introduction/rack) you wish to deploy to.
### `app`
**Required** The name of the [app](https://docs.convox.com/deployment/creating-an-application) you wish to deploy.
### `release`
**Required** The ID of the [release](https://docs.convox.com/deployment/releases) you wish to promote. This ID is output as `release` by the [Build](../build) action
### `command`
**Required** The command you wish to run
## Example usage
```
steps:
- name: build
  id: build
  uses: convox/actions/build@v1
  with:
    password: ${{ secrets.CONVOX_DEPLOY_KEY}}
    rack: staging
    app: myapp
- name: run
  uses: convox/actions/promote@v1
  with:
    password: ${{ secrets.CONVOX_DEPLOY_KEY }}
    rack: staging
    app: myapp
    service: web
    release: ${{ steps.build.outputs.release }}
    command 'rake db:migrate'
- name: promote
  uses: convox/actions/promote@v1
  with:
    password: ${{ secrets.CONVOX_DEPLOY_KEY }}
    rack: staging
    app: myapp
    release: ${{ steps.build.outputs.release }}
```