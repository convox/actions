# Github Actions for Convox

This repository contains a set of Github Actions to be used with the [Convox](https://convox.com) Platform. If you [Install a Convox Rack](https://github.com/convox/installer) using the cloud provider of your choice and create a [convox.yml](https://docs.convox.com/application/convox-yml) to describe your application and it's dependencies you can use these actions to create a complete CI/CD pipeline

## Actions

### [Deploy](./deploy)
Builds and Promotes and App in one step
### [Build](./build)
Builds an App and creates a release which can be promoted later
### [Run](./run) 
Runs a command (such as a migration) using a previously built release before or after it is promoted
### [Promote](./promote)
Promotes a previously built release