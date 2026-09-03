# Client Recommendations

## Client A – Startup Company
**Recommended Platform: Google Cloud Platform (GCP)**

GCP is the strongest fit for this startup because of its cost efficiency and scalability for growing workloads. It offers sustained use discounts that automatically lower compute costs the longer resources run, without requiring upfront commitments, which helps a limited budget stretch further. GCP also has a generous free tier and startup credit programs through Google for Startups, making it easier to launch with minimal initial spend. As the app grows, GCP's autoscaling and managed services let the company scale up without re-architecting its infrastructure.

Services the client could use:
1. **App Engine** for scalable, fully managed mobile backend hosting
2. **Firebase** for mobile app development, authentication, and real time database needs
3. **Cloud Storage** for storing user generated content such as images and files
4. **BigQuery** for analyzing user behavior and app performance as the user base grows

## Client B – University
**Recommended Platform: Microsoft Azure**

Azure is the clear choice since the university already runs Windows Server, Microsoft 365, and Active Directory. Azure integrates natively with these tools through Microsoft Entra ID (formerly Azure AD), allowing the university to extend its existing identity and access management system into the cloud instead of rebuilding it. This reduces migration complexity, training time, and licensing friction, since staff and students already use Microsoft accounts. Azure also offers education specific pricing and grant programs that make it a cost effective option for academic institutions.

Services the client could use:
1. **Azure Virtual Machines** for migrating on premises servers to the cloud
2. **Microsoft Entra ID** for unified identity management across cloud and on premises systems
3. **Azure Files** for shared file storage accessible across departments
4. **Azure Active Directory Domain Services** for extending existing AD infrastructure into Azure

## Client C – AI Research Company
**Recommended Platform: Google Cloud Platform (GCP)**

GCP is best suited for AI and machine learning workloads because Google built much of the underlying technology this field relies on, including TensorFlow and Kubernetes. GCP provides access to high performance TPUs (Tensor Processing Units) alongside GPUs, which are specifically optimized for training large machine learning models faster and more efficiently than general purpose hardware. Its Vertex AI platform also simplifies the full ML lifecycle, from data preparation to model deployment, reducing the engineering overhead needed to run high performance computing workloads. This combination of specialized hardware and mature ML tooling makes GCP the strongest choice for a company focused on AI research.

Services the client could use:
1. **Vertex AI** for building, training, and deploying machine learning models
2. **Compute Engine with GPU/TPU support** for high performance model training
3. **BigQuery** for large scale data analysis and preparation
4. **Google Kubernetes Engine (GKE)** for orchestrating containerized ML workloads at scale

## Client D – Global E-Commerce Company
**Recommended Platform: Amazon Web Services (AWS)**

AWS is the best fit for a global e-commerce company because it has the largest and most mature global infrastructure footprint of any provider, with the most regions and availability zones worldwide. This allows the company to serve customers with low latency no matter where they are located. AWS also offers proven, battle tested tools for automatic scaling and high availability, since major e-commerce platforms have relied on AWS infrastructure for years to handle unpredictable traffic spikes such as sales events. Its content delivery network and global load balancing further ensure the platform stays fast and available even during periods of extremely high demand.

Services the client could use:
1. **Amazon EC2 with Auto Scaling** for automatically adjusting compute capacity based on traffic
2. **Amazon CloudFront** as a global content delivery network to reduce latency for customers worldwide
3. **Amazon RDS with Multi AZ deployment** for highly available, fault tolerant databases
4. **Elastic Load Balancing** for distributing traffic across servers to maintain uptime during demand spikes


## Multi-Cloud Decision Matrix

| Business Requirement | Recommended Platform | Justification |
|---|---|---|
| Startup Company | AWS | AWS offers extensive startup programs, generous free tier, pay-as-you-go pricing, and the largest ecosystem of third-party integrations. This minimizes initial costs while supporting rapid scaling as the company grows. |
| Enterprise Organization | AWS or Azure | AWS dominates the enterprise market with mature services and widespread adoption. However, Azure excels if the organization uses Microsoft technologies and already has enterprise agreements in place. |
| Microsoft Environment | Azure | Azure is purpose-built to integrate seamlessly with Microsoft products like Active Directory, Microsoft 365, and Windows Server. This eliminates compatibility issues and reduces migration complexity. |
| AI / Machine Learning | GCP | Google Cloud Platform is industry-leading for AI/ML workloads, offering TensorFlow, BigQuery, Vertex AI, and AutoML. Google's expertise in machine learning gives it a significant advantage over competitors. |
| Kubernetes Deployment | GCP | GCP offers Google Kubernetes Engine (GKE), which is superior because Google invented Kubernetes. GKE provides native integration, optimal performance, and the easiest management experience for container orchestration. |
| Global Web Application | AWS | AWS has the most extensive global infrastructure with 30+ regions, advanced CDN (CloudFront), and mature auto-scaling services. This ensures low latency, high availability, and optimal performance worldwide. |
