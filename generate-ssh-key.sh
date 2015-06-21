#!/bin/sh
KEY_FILE="./files/id_rsa"

ssh-keygen -t rsa -C "ambari-ssh-key" -P '' -f ${KEY_FILE}
FINGERPRINT=$(ssh-keygen -E md5 -lf ${KEY_FILE} | awk '{print $2}' | sed s/MD5://)
export TF_VAR_ssh_fingerprint=${FINGERPRINT}
echo "export TF_VAR_ssh_fingerprint=${FINGERPRINT}"
