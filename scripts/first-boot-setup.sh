#!/bin/bash

# Esempio: aggiunge una riga a /etc/fstab se non esiste già
FSTAB_ENTRY="/dev/sdb1 /mnt/dati ext4 defaults 0 2"

if ! grep -q "/dev/sdb1" /etc/fstab; then
    echo "$FSTAB_ENTRY" >> /etc/fstab
    echo "Fstab aggiornato con successo."
fi
