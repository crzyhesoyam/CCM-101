# Multi-Tier Architecture

A **two-tier architecture** splits an application into two separate layers: one that users interact with, and one that stores the data. In this mission, the two tiers are a Nextcloud web container and a MariaDB database container.

## The Web/Application Tier

The web/application tier is the part of the system that users interact with directly. Its role is to serve the user interface, handle incoming HTTP requests, run the application logic, and communicate with the database when data is needed. In this lab, the **Nextcloud container** is the web/application tier, accessible through port 8080.

## The Database Tier

The database tier is responsible for storing persistent data, such as user accounts, credentials, and file metadata. It does not interact with users directly. It only responds to requests from the application tier. In this lab, the **MariaDB container** is the database tier.

## Why Separate Them?

Separating the web server and the database into two containers lets each tier be scaled, updated, and restarted independently, so a problem or upgrade in one does not take down the other. It also improves security, since the database does not need to be exposed to the public and can be reached only by the application. Finally, each container does one job, which makes troubleshooting, backups, and maintenance simpler.
