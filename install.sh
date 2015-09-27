#! /bin/bash

# Install directory is /usr/bin by default, change this if you'd like.
INSTALL_DIR="/usr/bin"
SCRIPT_NAME="disktransmog"

if [[ $(id -u) != 0 ]]; then 
    echo "[!] Error: This script must be run as root"
    exit 127
fi

if [[ -f ${INSTALL_DIR}/${SCRIPT_NAME} ]]; then
    read -r -p "[+] ${SCRIPT_NAME} appears to be installed already. Overwrite? [y/n] " CHOICE

    if [[ ${CHOICE} == "y" || ${CHOICE} == "Y" ]]; then
        cp -f ${SCRIPT_NAME} ${INSTALL_DIR}/
        echo "[+] script copied."
    else
        echo "[+] No changes made, exiting."
        exit 1
    fi
else
    cp ${SCRIPT_NAME} ${INSTALL_DIR}/
fi

#make sure perms are good
chown root:root ${INSTALL_DIR}/${SCRIPT_NAME}
chmod 755 ${INSTALL_DIR}/${SCRIPT_NAME}
echo "[+] Done."