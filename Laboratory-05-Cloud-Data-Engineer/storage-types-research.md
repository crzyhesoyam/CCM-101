# Cloud Storage Types Research

## Comparison Table: Block vs File vs Object Storage

| Storage Type | Description | Primary Use Case | Cloud Provider Example |
|--------------|-------------|------------------|----------------------|
| **Block Storage** | Stores data in fixed-sized blocks, similar to a physical hard drive. Accessed via a storage volume that attaches to a server. | Operating systems, databases, high-speed applications | AWS EBS (Elastic Block Store) |
| **File Storage** | Stores data in hierarchical folders and files. Accessed over a network using protocols like NFS or SMB. | Shared documents, shared team resources, media libraries | AWS EFS (Elastic File System) |
| **Object Storage** | Stores data as objects (self-contained units) with metadata in a flat structure. Accessed via HTTP/S APIs. Highly scalable. | Images, videos, backups, archives, unstructured data | AWS S3 (Simple Storage Service) |

## Why Object Storage for User-Uploaded Images

Object Storage is the best choice for your client's photo-sharing application for three key reasons. First, it scales infinitely—you can store millions of images without managing physical infrastructure. Second, it's cost-effective; you pay only for what you use, making it ideal for unpredictable amounts of user uploads. Finally, object storage provides high availability and durability, ensuring that customer photos are never lost even if physical servers fail.
