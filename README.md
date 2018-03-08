# bitbucket-deployer
Bash script for deploying directly from bitbucket to your server

###Main functionalities:
* deploying directly from bitbucket without having git installed on targeted server
* possibility to deploy different branch just by specifying branch name
* auto creating backup functionality


## USAGE

1. Copy bitbacket-deployer.sh to the destination you want to deploy 
2. run script like that 

```js
sh bitbacket-deployer.sh master MyDeployFolder  https://bitbucket.org/path/toProject user.name@mail.com password
```

where:
```
@param1 branch of the player on bitbucket 
@param2 folder to extract the player 
@param3 bitbucket project URL
@param4 userID on bitbucket
@param5 user Password on bitbucket
```
