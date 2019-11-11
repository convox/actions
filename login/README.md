# Convox Build Action
This Action sets required environment variables for Convox [password](https://docs.convox.com/console/deploy-keys) and host to be used by subsequent actions 

## Inputs
### `password`
**Required** The value of your [Convox Deploy Key](https://docs.convox.com/console/deploy-keys)
### `host`
**Optional** The host name of your [Convox Console](https://docs.convox.com/introduction/console). This defaults to `console.convox.com` and only needs to be overwritten if you have a [self-hosted console](https://docs.convox.com/reference/hipaa-compliance#run-a-private-convox-console)

## Example usage
```
uses: convox/actions/logind@v1
with:
  password: ${{ secrets.CONVOX_DEPLOY_KEY }}
```