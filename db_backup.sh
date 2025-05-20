#!/bin/bash

APP_PROPERTIES="./app.properties"  
TIMESTAMP=$(date +"%Y%m%d%H%M")
BACKUP_DIR="$HOME/backup"
BACKUP_FILE="$BACKUP_DIR/bds-db-$TIMESTAMP.sql"

DB_USER=$(grep 'datasource.username' "$APP_PROPERTIES" | cut -d'=' -f2)
DB_PASSWORD=$(grep 'datasource.password' "$APP_PROPERTIES" | cut -d'=' -f2)

export PGPASSWORD="$DB_PASSWORD"

mkdir -p "$BACKUP_DIR"

pg_dump -U "$DB_USER" -h 127.0.0.1 -d postgres > "$BACKUP_FILE"

if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_FILE"
else
    echo "Backup failed!"
fi
