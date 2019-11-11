# Convox Deploy Action
This Action [Deploys](https://docs.convox.com/introduction/getting-started#deploy-your-application) an app based on a [convox.yml](https://docs.convox.com/application/convox-yml) to Convox. The Deploy action performs the functions of combining the [Build](../build) and [Promote](../promote) actions but in a single step.

## Inputs
### `password`
**Optional** The value of your [Convox Deploy Key](https://docs.convox.com/console/deploy-keys). This is not required if you have previously run a [convox/actions/login](../login) step
### `host`
**Optional** The host name of your [Convox Console](https://docs.convox.com/introduction/console). This defaults to `console.convox.com` and only needs to be overwritten if you have a [self-hosted console](https://docs.convox.com/reference/hipaa-compliance#run-a-private-convox-console)
### `rack`
**Required** The name of the [Convox Rack](https://docs.convox.com/introduction/rack) you wish to deploy to.
### `app`
**Required** The name of the [app](https://docs.convox.com/deployment/creating-an-application) you wish to deploy.

## Example usage
```
uses: convox/actions/deploy@v1
with:
  password: ${{ secrets.CONVOX_DEPLOY_KEY }}
  rack: staging
  app: myapp
```