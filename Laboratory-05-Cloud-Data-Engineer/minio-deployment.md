# MinIO Deployment Documentation

## Docker Deployment Command

The following command was used to deploy MinIO on KillerCoda:

```bash
docker run -d -p 9000:9000 -p 9001:9001 --name minio-server \
-e "MINIO_ROOT_USER=cloudadmin" \
-e "MINIO_ROOT_PASSWORD=CloudNova2026!" \
cgr.dev/chainguard/minio:latest server /data --console-address ":9001"
```

## Technical Deployment Details

**Web Console Port:** 9001
- Used to access the MinIO management interface and perform administrative tasks

**API Port:** 9000
- Used by applications to programmatically interact with the object storage

**Container Name:** minio-server
- Identifier for managing the running Docker container

**Bucket Created:** client-photos
- Primary storage container for customer-uploaded image files

## Environment Variables Explanation

Environment variables (set with `-e` flags) configure MinIO's authentication:

- **MINIO_ROOT_USER=cloudadmin**
  - Sets the root administrator username for MinIO
  - Used to log into the web console and manage the storage system
  - Provides initial administrative access to create buckets and manage permissions

- **MINIO_ROOT_PASSWORD=CloudNova2026!**
  - Sets the root administrator password
  - Required for secure authentication when accessing the MinIO system
  - Should be strong and protected (in production, use secure credential management)

## Deployment Success Indicators

- Container status: Running
- Ports mapped correctly: 9000 (API) and 9001 (Console)
- Web console accessible at port 9001
- Successfully created bucket and uploaded test file
