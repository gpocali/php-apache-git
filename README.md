# php-apache-git
 PHP Apache Web Server with Git Download of Site Content

## Overview
 This docker will launch PHP on Apache and then download the web content using Git
 
## Environmental Variables
 - GIT_REPOSITORY - GIT Repository HTTPS Link without the leading "https://"
 - GIT_BRANCH - (Optional) GIT Branch or HEAD if omitted
 - GIT_DIRECTORY - (Optional) Directory within the GIT repository to mount as web root
 - GIT_TOKEN - (Optional) GIT Repository Personal Access Token - If Secret is defined, it will be used first.
 
## Secrets
 - php-apache-web-token - (Optional) GIT Repository Personal Access Token
 
## GIT Token
 - Create using https://github.com/settings/tokens
 - Full Repo access permissions are required
