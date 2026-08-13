•	Compute Resources 
Purpose: Networking resources connect systems to each other and to the internet, allowing data to travel between servers, users, and services.

Why it's important in cloud computing: Without networking, isolated compute and storage would be useless — cloud infrastructure depends on networking to let users access applications, let servers communicate with each other, and let cloud providers enforce security boundaries (firewalls, subnets, load balancing).

Relation to the Linux environment (KillerCoda): The hostname and IP address you retrieved with hostname and ip a/hostname -I identify your server on the network. This is how your KillerCoda instance is reachable — the same underlying concept as how any cloud VM gets a private or public IP address so it can be accessed and communicate with other resources.

•	Storage Resources 
Purpose: Storage resources hold data persistently — operating system files, application data, logs, and user files — even after the system is powered off or restarted.

Why it's important in cloud computing: Cloud storage needs to be reliable, scalable, and often redundant (backed up across multiple locations) so data isn't lost if hardware fails. It also needs to scale independently from compute, since storage needs often grow faster than processing needs.

Relation to the Linux environment (KillerCoda): The disk capacity and mounted file systems you found using df -h and mount show how storage is allocated and organized on your server — e.g., the root partition (/) where the OS and files live. This mirrors how cloud storage volumes are attached to virtual machines in real cloud platforms.

•	Networking Resources 
Purpose: Networking resources connect systems to each other and to the internet, allowing data to travel between servers, users, and services.

Why it's important in cloud computing: Without networking, isolated compute and storage would be useless — cloud infrastructure depends on networking to let users access applications, let servers communicate with each other, and let cloud providers enforce security boundaries (firewalls, subnets, load balancing).

Relation to the Linux environment (KillerCoda): The hostname and IP address you retrieved with hostname and ip a/hostname -I identify your server on the network. This is how your KillerCoda instance is reachable — the same underlying concept as how any cloud VM gets a private or public IP address so it can be accessed and communicate with other resources.

•	Operating System 
Purpose: The operating system manages hardware resources (CPU, memory, storage, network) and provides the environment in which applications actually run. It also handles user permissions, processes, and system services.

Why it's important in cloud computing: Even in the cloud, every virtual machine needs an OS to function — it's the layer that translates cloud infrastructure into something usable. Cloud providers offer a choice of OS images (Linux distros, Windows Server, etc.) because different workloads have different OS requirements.

Relation to the Linux environment (KillerCoda): Running cat /etc/os-release and uname -r revealed the specific Linux distribution and kernel version powering your KillerCoda instance. This OS is what let you run all the other commands, manage files, and interact with the compute/storage/network resources described above.
