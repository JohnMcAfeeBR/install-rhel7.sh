#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo ':: Adding EPEL repo'
rpm -ivh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-rpm-macros-7-13.noarch.rpm || true

echo ':: Adding Ajenti repo'
rpm -ivh http://repo.ajenti.org/ajenti-repo-1.0-1.noarch.rpm

echo ':: Installing package'
yum install ajenti -y

echo ':: Done! Open https://<address>:8000 in browser'
