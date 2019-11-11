# Convox Promote Action
This Action [Promotes](https://docs.convox.com/deployment/releases#promoting-a-release) a previously built app to Convox. You will typically need to perform the [Build](../build) action prior to running this action.

## Inputs
### `rack`
**Required** The name of the [Convox Rack](https://docs.convox.com/introduction/rack) you wish to deploy to.
### `app`
**Required** The name of the [app](https://docs.convox.com/deployment/creating-an-application) you wish to deploy.
### `release`
**Optional** The ID of the [release](https://docs.convox.com/deployment/releases) you wish to promote. If you have run a [Build](../build) action as a previous step this step will promote the release created by that build step by default. You only need to set the release if you have not run a build step first or you wish to override the release id from the build step

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
- name: promote
  uses: convox/actions/promote@v1
  with:
    rack: staging
    app: myapp
```