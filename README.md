# Github Actions for Convox

This repository contains links to a set of Github Actions to be used with the [Convox](https://convox.com) Platform. If you [Install a Convox Rack](https://github.com/convox/installer) using the cloud provider of your choice and create a [convox.yml](https://docs.convox.com/application/convox-yml) to describe your application and its dependencies you can use these actions to create a complete CI/CD pipeline

## Actions
### [convox/action-login](https://github.com/convox/action-login)
Authenticates your Convox account. You should run this action as the first step in your workflow
### [convox/action-deploy](https://github.com/convox/action-deploy)
Builds and Promotes and App in one step
### [convox/action-build](https://github.com/convox/action-build)
Builds an App and creates a release which can be promoted later
### [convox/action-run](https://github.com/convox/action-run) 
Runs a command (such as a migration) using a previously built release before or after it is promoted
### [convox/action-promote](https://github.com/convox/action-promote)
Promotes a release