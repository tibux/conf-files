#!/bin/bash
#
# openvpn : init pki

set -e
#set -v
#set -x

EASY_RSA_PATH="/usr/doc/openvpn-*/easy-rsa/2.0"

SERVER="serpico"
CLIENTS="farnese gutz isidro casca skullknight"

(
  cd $EASY_RSA_PATH

  source ./vars

  export KEY_SIZE=2048

  export KEY_COUNTRY="FR"
  export KEY_PROVINCE="IleDeFrance"
  export KEY_CITY="Paris"
  export KEY_ORG="Tibux"
  export KEY_EMAIL="tib@tibux.org"
  export KEY_CN=""
  export KEY_NAME="Thibaut Notteboom"
  export KEY_OU="vpn"

  ./clean-all
  ./build-dh 2>&1 >/dev/null

  echo "Creation du certicat CA"
  ./pkitool --initca 2>&1 >/dev/null

  echo "Creation du certificat serveur"
  ./pkitool --server serpico 2>&1 >/dev/null

  echo "Creation des certificats clients..."
  for c in $CLIENTS; do ./pkitool $c 2>&1 >/dev/null ; done

  echo "Les certificats sont disponibles ici : $EASY_RSA_PATH/keys/"
)

