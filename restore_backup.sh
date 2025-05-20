#!/bin/bash

BACKUP_DIR="$HOME/backup"          
LATEST_BACKUP=$(ls -t "$BACKUP_DIR"/*.sql | head -n 1)  # Get the most recent backup
APP_PROPERTIES="./app.properties" 

DB_USER=$(grep 'datasource.username' "$APP_PROPERTIES" | cut -d'=' -f2)
DB_PASSWORD=$(grep 'datasource.password' "$APP_PROPERTIES" | cut -d'=' -f2)

export PGPASSWORD="$DB_PASSWORD"

DB_NAME="postgres"

if [ -z "$LATEST_BACKUP" ]; then
    echo "No backup file found in $BACKUP_DIR!"
    exit 1
fi

echo "Restoring database from: $LATEST_BACKUP"

psql -U "$DB_USER" -h 127.0.0.1 -d "$DB_NAME" < "$LATEST_BACKUP"

if [ $? -eq 0 ]; then
    echo "Database restored successfully!"
else
    echo "Database restoration failed!"
fi
