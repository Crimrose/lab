#!/bin/bash

# Define variables

USER="myuser"
PASSWORD="mypassword"
DATABASE="mydatabase"
BACKUP_DIR="/home/backup" # Change this to your desired backup directory
DATE=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="${BACKUP_DIR}/${DATABASE}_backup_${DATE}.sql.gz"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Perform the backup

mysqldump -P 3306 -h 127.0.0.1 -u"$USER" -p"$PASSWORD" --databases "mydatabase" --no-tablespaces --compress | gzip > "$BACKUP_FILE"

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_FILE"
else
    echo "Backup failed!" >&2
    exit 1
fi
