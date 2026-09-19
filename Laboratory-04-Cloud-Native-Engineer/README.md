# Laboratory 04: Cloud-Native Engineer

## Mission Overview

In this laboratory activity, you were promoted to the Cloud-Native Engineering Team at CloudNova Technologies. The mission focused on understanding the shift from traditional Virtual Machines (VMs) to containerization using Docker. You researched the differences between VMs and containers, accessed a Docker-enabled cloud environment using KillerCoda Playground, and deployed a live containerized Nginx web server. This hands-on experience demonstrated how modern cloud-native applications are built using lightweight, portable containers instead of resource-heavy virtual machines.

---

## Objectives

By completing this laboratory, you should now be able to:

1. ✅ Differentiate between traditional Virtual Machines (VMs) and Containers
2. ✅ Access a Docker-enabled cloud environment using KillerCoda
3. ✅ Execute fundamental Docker CLI (Command Line Interface) commands
4. ✅ Pull, run, manage, and terminate a containerized application (Nginx)
5. ✅ Create professional technical documentation of container operations using Markdown
6. ✅ Maintain and organize a well-structured GitHub Cloud Computing Portfolio

---

## Docker Commands Executed

### Checkpoint 3: Verify Docker Installation

```bash
docker version && docker info
```

- **`docker version`** - Displays Docker client and server version information to verify installation
- **`docker info`** - Shows complete Docker system information including running containers, images, storage driver, and system status

---

### Checkpoint 4: Deploy Nginx Container

**Combined Command - Pull, Run, and Verify in One Step:**
```bash
docker pull nginx && docker run -d -p 8080:80 nginx && curl http://localhost:8080
```

**Command Breakdown:**

1. **`docker pull nginx`** - Downloads the official Nginx image from Docker Hub to your local system

2. **`docker run -d -p 8080:80 nginx`** - Runs the Nginx container
   - `-d` - Runs in detached mode (background)
   - `-p 8080:80` - Maps port 8080 on the host to port 80 inside the container
   - Starts the web server instantly

3. **`curl http://localhost:8080`** - Verifies the web server is running
   - Sends an HTTP request to the running Nginx container
   - Returns the "Welcome to nginx!" HTML page
   - Confirms successful deployment

**Output:** You should see the HTML code for the Nginx welcome page, indicating the container is operational.

**Command Chaining:** Using `&&` ensures each command runs only if the previous one succeeds, providing a streamlined deployment workflow.

---

### Checkpoint 5: Container Lifecycle Management

**List Running Containers:**
```bash
docker ps
```
- Displays all currently running containers with their Container ID, image name, creation time, status, port mappings, and assigned names

**Stop the Running Container:**
```bash
docker stop [CONTAINER_ID]
```
- Gracefully stops the running Nginx container without deleting it
- The container remains on your system but is no longer active

**Verify Container is Stopped:**
```bash
docker ps
```
- Shows that the container no longer appears in the list of running containers
- Confirms the container has been successfully stopped

**Remove Container Completely:**
```bash
docker rm [CONTAINER_ID]
```
- Permanently deletes the stopped container from the system
- Once removed, the container cannot be recovered

---

## Skills Learned

During this laboratory, you developed the following technical skills:

**Docker & Containerization:**
- Understand the fundamental architectural differences between VMs and containers
- Execute essential Docker CLI commands for managing the container lifecycle
- Pull Docker images from Docker Hub and run containerized applications
- Configure port mapping to expose containerized applications to the host network

**Container Management:**
- Start containers in detached mode for background execution
- List and identify running containers using Container IDs
- Gracefully stop containers without data loss
- Permanently remove containers when no longer needed

**Technical Documentation:**
- Document procedures and technical findings using Markdown format
- Create clear, step-by-step guides for reproducible processes
- Capture and organize screenshots as evidence of completed tasks

**Cloud-Native Thinking:**
- Adopt a mindset focused on lightweight, scalable, containerized applications
- Recognize the advantages of containers over traditional VMs (speed, resource efficiency, portability)
- Understand how containerization enables modern DevOps practices

**Linux & System Administration:**
- Navigate and execute commands in a Linux terminal environment
- Use command chaining with operators like `&&` for sequential command execution
- Verify system status and gather detailed information about running services

**GitHub Portfolio Development:**
- Maintain organized, professional project documentation
- Create well-structured repository layouts for cloud computing projects
- Commit and push work regularly to version control

---

## Challenges Encountered

### Challenge 1: Understanding Port Mapping

**Issue:** Initially unclear why port mapping (-p 8080:80) was necessary for accessing the web server inside the container.

**Solution:** Learned that port 80 inside the container is isolated and not directly accessible from the host machine. Port mapping bridges the host's port 8080 to the container's internal port 80, allowing external access through a web browser or curl command. This is a key concept in containerization.

---

### Challenge 2: Finding and Using Container IDs

**Issue:** Difficulty identifying the correct Container ID from the `docker ps` output and remembering it for subsequent commands.

**Solution:** Practiced using `docker ps` to view all running containers and identified that the Container ID is displayed in the first column. Learned to either copy the full 12-character ID or use shorter versions. Also discovered that the NAMES column provides an alternative identifier (e.g., "happy_einstein") that can be used in place of the Container ID.

---

### Challenge 3: Distinguishing Between `docker stop` and `docker rm`

**Issue:** Confusion about the difference between stopping and removing a container—whether `docker stop` deletes data or just pauses execution.

**Solution:** Clarified through practical testing that `docker stop` gracefully halts the container (preserving its state) while `docker rm` permanently deletes it from the system. These are two separate operations, each serving different purposes in the container lifecycle.

---

### Challenge 4: Capturing Accurate Screenshots

**Issue:** Ensuring screenshots clearly displayed all relevant terminal output and Docker command results.

**Solution:** Took multiple screenshots at each checkpoint milestone:
- `docker-version.png` - Shows docker version && docker info output
- `nginx-running.png` - Displays successful curl output from the running container
- `container-lifecycle.png` - Shows all container lifecycle commands in sequence

Organized all screenshots in the `/screenshots/` folder with descriptive filenames for clarity.

---

## Summary

This laboratory successfully introduced containerization and Docker as fundamental technologies for cloud-native engineering. By deploying a real Nginx container and managing its complete lifecycle, you gained practical experience that demonstrates why containers are transforming modern software development and deployment practices.
