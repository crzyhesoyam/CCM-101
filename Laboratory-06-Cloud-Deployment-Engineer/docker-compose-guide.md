# Docker Compose Guide

This guide explains the `docker-compose.yml` file used to deploy a Nextcloud and MariaDB stack.

## The Compose File

```yaml
version: '3'
services:
  database:
    image: mariadb:10.6
    environment:
      - MYSQL_ROOT_PASSWORD=cloudnova_root
      - MYSQL_PASSWORD=cloudnova_pass
      - MYSQL_DATABASE=nextcloud_db
      - MYSQL_USER=nextcloud_user
  app:
    image: nextcloud
    ports:
      - 8080:80
    environment:
      - MYSQL_PASSWORD=cloudnova_pass
      - MYSQL_DATABASE=nextcloud_db
      - MYSQL_USER=nextcloud_user
      - MYSQL_HOST=database
```

## What does the `services:` block do?

The `services:` block defines each container that makes up the application. Every entry under it (here, `database` and `app`) is one service, and each has its own image, ports, and environment variables. When `docker-compose up` runs, Compose reads this block and creates, configures, and starts one container per service. Compose also places them on a shared default network so they can communicate.

## How did the Nextcloud app container find the database container?

The app container found the database through the `MYSQL_HOST=database` environment variable. The value `database` matches the **service name** defined in the Compose file. Docker Compose connects all services to the same network and provides built-in DNS, so the service name works as a hostname. When Nextcloud connects to the host `database`, Docker resolves it to the MariaDB container's IP address. No manual IP addresses or network setup were needed.

## `docker run` vs. `docker-compose up -d`

| Feature | `docker run` | `docker-compose up -d` |
|---|---|---|
| Scope | Starts a **single** container | Starts the **entire multi-container stack** |
| Configuration | Long command with flags typed manually | Stored in a reusable `docker-compose.yml` file |
| Networking | Containers must be linked or networked manually | Services share a network automatically |
| Repeatability | Easy to make typing mistakes | Same result every time from the same file |
| Version control | Commands are hard to track | The file can be committed to GitHub (Infrastructure as Code) |

In short, `docker run` is a manual, one-container command, while `docker-compose up -d` deploys a complete application from code in the background.
