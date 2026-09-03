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

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/3278ab44-89a6-485f-a13d-f304e824b0ae" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/b44a1c08-e4b5-4608-b2fe-3fbc738201a6" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/b0470f58-d0de-4f32-a535-950226f505cb" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/2643be75-e881-4c6f-9c59-1e4f33998689" />

