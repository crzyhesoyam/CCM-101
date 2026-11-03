# CloudNova Operational Manual

## 1. Overview
WordPress (web tier) and MariaDB 10.11 (data tier) run as Docker containers on an
Ubuntu Server 24.04 VM inside VirtualBox. Data lives in named volumes `db_data` and
`wp_data`. UFW restricts access to ports 22 and 8080. A cron job runs a backup script
daily at 02:00.

## 2. Deployment
1. Install Docker Engine and the Compose plugin from Docker's official apt repository.
2. Clone this repo and enter this folder.
3. `cp .env.example .env`, then edit `.env` and set strong passwords.
4. `docker compose up -d`
5. Open http://<server-ip>:8080 and finish the WordPress installer.

## 3. Security
- UFW default policy: deny incoming, allow outgoing.
- Allowed: 22/tcp (SSH administration), 8080/tcp (web).
- MariaDB publishes no ports and is reachable only on the internal Docker network.
- Secrets live in `.env`, which is git-ignored.
- Check status: `sudo ufw status verbose`
- Note: Docker-published ports can bypass UFW, so publish only what is needed.

## 4. Backup and recovery
- Script: `automation-script.sh`, scheduled by cron: `0 2 * * *`.
- Output: `/home/cloudadmin/backups/` (`db_*.sql.gz`, `wp_*.tar.gz`), 7-day retention.
- Logs: `backup.log` (script) and `cron.log` (cron output).
- Restore the database:
  `gunzip -c db_<timestamp>.sql.gz | docker exec -i cloudnova-db sh -c 'exec mariadb -uroot -p"$MARIADB_ROOT_PASSWORD"'`
- Restore files: stop the stack, then extract `wp_<timestamp>.tar.gz` into the
  `cloudnova_wp_data` volume using a temporary alpine container.

## 5. Routine maintenance
| Task | Command |
|---|---|
| Container status | `docker compose ps` |
| View logs | `docker compose logs -f` |
| Update images | `docker compose pull && docker compose up -d` |
| Update OS | `sudo apt update && sudo apt upgrade -y` |
| Check disk | `df -h` and `docker system df` |
| Check cron | `crontab -l` and `tail ~/backups/backup.log` |

## 6. Troubleshooting
| Symptom | Fix |
|---|---|
| Site unreachable from host | Check VirtualBox port-forward rules and `sudo ufw status` |
| WordPress "database connection error" | `docker compose logs db`; verify `.env` values |
| No new backups | `systemctl status cron`; read `cron.log`; run the script by hand |
| SSH locked out after UFW | Use the VirtualBox console and run `sudo ufw allow 22/tcp` |
