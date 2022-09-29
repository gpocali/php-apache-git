# php-apache-git
 PHP Apache Web Server with Git Download of Site Content

## Overview
 This docker will launch PHP on Apache and then download the web content using Git
 
## Environmental Variables
 - GIT_REPOSITORY - GIT Repository HTTPS Link without the leading "https://"
 - GIT_BRANCH - (Optional) GIT Branch or HEAD if omitted
 - GIT_DIRECTORY - Directory within the GIT repository to mount as web root
 
## Secrets
 - php-apache-web-token - GIT Repository Personal Access Token - https://github.com/settings/tokens
