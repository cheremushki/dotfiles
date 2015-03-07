if (( $+commands[keychain] ))
then
  eval `keychain --agents ssh --eval id_rsa -q`
fi
