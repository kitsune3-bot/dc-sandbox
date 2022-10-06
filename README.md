# Remote-Containers Template
## How to use
### (local setting) Environment Vatiable Config

Set the environment variables in the table below to the local machine.

|Environment Variable||
|--|--|
|REMOTE_HTTP_PROXY|HTTP_PROXY setting on the network of the remote machine|
|REMOTE_HTTPS_PROXY|HTTPS_PROXY setting on the network of the remote machine|
|remote_http_proxy|http_proxy setting on the network of the remote machine|
|remote_https_proxy|https_proxy setting on the network of the remote machine|
|remote_noproxy|no_proxy setting on the network of the remote machine|

#### example
setting.json (user config)
```json
{
    "terminal.integrated.env.windows": {
        "REMOTE_HTTP_PROXY": "",
        "REMOTE_HTTPS_PROXY": "",
        "remote_http_proxy": "",
        "remote_https_proxy": "",
        "remote_no_proxy": "",        
    },
    "terminal.integrated.env.osx": {
        "REMOTE_HTTP_PROXY": "",
        "REMOTE_HTTPS_PROXY": "",
        "remote_http_proxy": "",
        "remote_https_proxy": "",
        "remote_no_proxy": "",    
    },
    "terminal.integrated.env.linux": {
        "REMOTE_HTTP_PROXY": "",
        "REMOTE_HTTPS_PROXY": "",
        "remote_http_proxy": "",
        "remote_https_proxy": "",
        "remote_no_proxy": "",
    }

}
```

or local .*rc file
```sh
export REMOTE_HTTP_PROXY=$HTTP_PROXY
export REMOTE_HTTPS_PROXY=$HTTPS_PROXY
export remote_http_proxy=$http_proxy
export remote_https_proxy=$https_proxy
export remote_no_proxy=$no_proxy
```

### (local setting) Git HTTPS Keychain Config
Configure credential.helper.  
https://docs.github.com/en/github/getting-started-with-github/caching-your-github-credentials-in-git

#### Windows
```sh
git config --global credential.helper wincred
```
#### Mac OSX
```sh
git config --global credential.helper osxkeychain
```
#### Linux
```sh
git config credential.helper store
git config --global credential.helper 'cache --timeout=3600'
```