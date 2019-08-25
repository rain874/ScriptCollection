#!/bin/bash

read -p"Möchten Sie vor dem löschen ein Backup des /var/log/ verzeichnis anlegen (j/n)" backup
if [ "$response" == "j" ]; then
        zip -r log.zip /var/
        echo "Alle logfiles wurde gelöscht !"
fi


read -p"Sollen wirklich alle logfile gelöscht werden (j/n)? " response

if [ "$response" == "j" ]; then
        find /var/log -type f -delete
        find /var/log -type f -regex ".*\.gz$"
        find /var/log -type f -regex ".*\.[0-9]$"
        echo "Alle logfiles wurde gelöscht !"
fi
