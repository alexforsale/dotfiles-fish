#!/usr/bin/env fish
# ~/.config/fish/conf.d/07-mail_apps.sh
# ${MAIL_APP} configuration
# <alexforsale@yahoo.com>

for mail_app in alpine balsa evolution geary kmail kube mailspring thunderbird
    if [ (command -v $mail_app) ]
        [ -z $MAIL_APP ] && set -x MAIL_APP $mail_app
    end
end
