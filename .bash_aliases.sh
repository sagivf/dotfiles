## Aliases
alias ll='ls -l'
alias lla='ls -alF'
alias la='ls -A'
alias l='ls -CF'

## Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NODE_ENV="development"
alias npmlinks='npm ls -g --depth=0 --link=true'

## IOS files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

## Android
# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/platform-tools
##

export PATH=$PATH:/usr/local/bin:/usr/bin/gem
export PATH=$PATH:/usr/local/opt/rabbitmq/sbin

# indexer autocomplete setup
INDEXER_AC_BASH_SETUP_PATH=/Users/sagiv.frankel/Library/Caches/indexer/autocomplete/bash_setup && test -f $INDEXER_AC_BASH_SETUP_PATH && source $INDEXER_AC_BASH_SETUP_PATH;
# indexer autocomplete setup
INDEXER_AC_ZSH_SETUP_PATH=/Users/sagiv.frankel/Library/Caches/indexer/autocomplete/zsh_setup && test -f $INDEXER_AC_ZSH_SETUP_PATH && source $INDEXER_AC_ZSH_SETUP_PATH;


export REDSHIFT_USER=""
export REDSHIFT_PASSWORD=""
export ARTIFACTORY_USER=
export ARTIFACTORY_APIKEY=


alias okta-aws='f(){ cmd="docker run -it --rm -v ~/.aws:/package/.aws quay.io/xxxxxxx sh -c \"python /package/samlapi.py "$@"\""; bash -c "${cmd}" unset -f f; }; f'


refresh-creds (){
okta-aws
export AWS_ACCESS_KEY_ID=`aws configure get saml.aws_access_key_id`
export AWS_SECRET_ACCESS_KEY=`aws configure get saml.aws_secret_access_key`
export AWS_SESSION_TOKEN=`aws configure get saml.aws_session_token`
}

make-airflow(){
make
make up
make ui
}
