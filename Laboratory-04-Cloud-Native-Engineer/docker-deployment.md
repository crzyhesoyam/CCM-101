# Docker Deployment - Container Lifecycle

## Commands Executed:

### 1. List Running Containers
**Command:**
```bash
docker ps
```

**Explanation:** Displays all currently running containers with their Container ID, image name, creation time, status, port mappings, and assigned names. This command is essential for identifying which containers are active.

---

### 2. Stop the Running Container
**Command:**
```bash
docker stop 34ac1a72d4c9
```

**Explanation:** Gracefully stops the running container without removing it. The container remains on your system but is no longer active. This is useful when you want to temporarily pause a container.

---

### 3. Verify Container is Stopped
**Command:**
```bash
docker ps
```

**Explanation:** Running this again shows that the container no longer appears in the list of running containers, confirming it has been successfully stopped.

---

### 4. Remove Container Completely
**Command:**
```bash
docker rm 34ac1a72d4c9
```

**Explanation:** Permanently deletes the stopped container from the system. Once removed, the container cannot be recovered unless you pull and run the image again.

---

## Key Takeaways:

- `docker ps` - Shows only running containers
- `docker ps -a` - Shows all containers (running and stopped)
- `docker stop` - Gracefully stops a container (data preserved)
- `docker rm` - Permanently removes a stopped container
- Container ID is found in the first column of `docker ps` output
