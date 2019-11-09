# Convox Build Action
This Action [builds](https://docs.convox.com/deployment/builds) an app based on a [convox.yml](https://docs.convox.com/application/convox-yml) so that app can be deployed on Convox

## Inputs
### `password`
**Required** The value of your [Convox Deploy Key](https://docs.convox.com/console/deploy-keys)
### `host`
**Optional** The host name of your [Convox Console](https://docs.convox.com/introduction/console). This defaults to `console.convox.com` and only needs to be overwritten if you have a [self-hosted console](https://docs.convox.com/reference/hipaa-compliance#run-a-private-convox-console)
### `rack`
**Required** The name of the [Convox Rack](https://docs.convox.com/introduction/rack) you wish to build against.
### `app`
**Required** The name of the [app](https://docs.convox.com/deployment/creating-an-application) you wish to build.
## Outputs
### `release`
The ID of the release that is created when the build completes. You will need this ID to run subsequent actions such as [Run](../run) and [Promote](../promote)

## Example usage
```
uses: convox/actions/build@v1
with:
  password: ${{ secrets.CONVOX_DEPLOY_KEY}}
  rack: staging
  app: myapp
```