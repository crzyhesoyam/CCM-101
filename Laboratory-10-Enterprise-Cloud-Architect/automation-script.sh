#!/bin/bash

set -euo pipefail
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

BACKUP_DIR="/home/cloudadmin/backups"
LOG_FILE="$BACKUP_DIR/backup.log"
RETENTION_DAYS=7
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p "$BACKUP_DIR"
trap 'echo "[$(date "+%F %T")] Backup FAILED" >> "$LOG_FILE"' ERR
echo "[$(date '+%F %T')] Backup started" >> "$LOG_FILE"


docker exec cloudnova-db sh -c 'exec mariadb-dump -uroot -p"$MARIADB_ROOT_PASSWORD" --all-databases' \
  | gzip > "$BACKUP_DIR/db_$TIMESTAMP.sql.gz"


docker run --rm -v cloudnova_wp_data:/data -v "$BACKUP_DIR":/backup alpine \
  tar czf "/backup/wp_$TIMESTAMP.tar.gz" -C /data .


find "$BACKUP_DIR" -type f \( -name "db_*.sql.gz" -o -name "wp_*.tar.gz" \) -mtime +"$RETENTION_DAYS" -delete

echo "[$(date '+%F %T')] Backup finished OK" >> "$LOG_FILE"
