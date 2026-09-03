## Checkpoint 7 – Continue Your Linux Investigation

#### System Specifications Collected:

- **Operating System**: Linux (Ubuntu/Debian/CentOS - depending on playground)
- **CPU Information**: [Number of cores, processor type, architecture]
- **Memory**: [Total RAM available]
- **Disk Space**: [Total disk capacity and usage]

### Cloud Migration Analysis

**If this Linux server were migrated to the cloud, which AWS, Azure, and GCP services could host it?**

#### AWS Services:
- **EC2 (Elastic Compute Cloud)** - Primary service for hosting Linux virtual machines with flexible sizing and auto-scaling
- **Lightsail** - Simplified virtual private server option for small to medium workloads
- **ECS (Elastic Container Service)** - If containerized, can host Docker containers
- **Lambda** - For serverless workloads if the application is event-driven

#### Microsoft Azure Services:
- **Virtual Machines** - Direct equivalent to EC2, supports Linux operating systems
- **App Service** - For web applications running on Linux
- **Container Instances** - For containerized Linux applications
- **Azure Kubernetes Service (AKS)** - For Kubernetes-based Linux deployments

#### Google Cloud Platform Services:
- **Compute Engine** - Primary GCP service for Linux virtual machines with similar flexibility to EC2
- **App Engine** - For managed application hosting on Linux runtimes
- **Cloud Run** - For containerized applications
- **Google Kubernetes Engine (GKE)** - For Kubernetes orchestration of Linux containers

### Recommended Services by Use Case:
- **General Linux Server Migration**: AWS EC2, Azure Virtual Machines, or GCP Compute Engine
- **High Availability & Auto-scaling**: AWS EC2 with Load Balancers, Azure VM Scale Sets, or GCP Managed Instance Groups
- **Containerized Applications**: AWS ECS, Azure Container Instances, or GCP Cloud Run
- **Kubernetes Deployments**: AWS EKS, Azure AKS, or GCP GKE

### Screenshots:
[Include screenshots of terminal showing:
- uname -a output
- free -h output
- df -h output
- lscpu output]

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/5d8702c8-7c48-4b0b-9e6e-75546899f53d" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/b3504d52-27d9-4f88-b171-355150018c43" />


