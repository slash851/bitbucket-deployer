# bitbucket-deployer
Bash script for deploying directly from bitbucket to your server

## USAGE

1. Copy DeployBranch.sh to the destination you want to deploy 
2. run script like that 

```js
sh DeployBranch.sh master MyDeploy  https://bitbucket.org/path/toProject/get/ user.name@mail.com password
```

where:
```
@param1 branch of the player on bitbucket 
@param2 folder to extract the player 
@param3 bitbucket project URL
@param4 userID on bitbucket
@param5 user Password on bitbucket
```