# Mission Reflection: Cloud Data Engineer

**1. Why is object storage better suited for storing millions of photos compared to a traditional block storage hard drive?**

Object storage doesn't hit a wall like a hard drive does. With a regular hard drive, you fill it up and you're done. You gotta buy a new one. That gets expensive fast. With object storage, you can just keep throwing data at it and it scales automatically. Object storage works through the internet using HTTP requests, so anyone can upload photos from their phone anywhere. Block storage can't do that. For a photo-sharing app with users all over the world, object storage is the obvious choice.

**2. How did using Docker make it easier to deploy the MinIO storage server?**

This was eye-opening. Without Docker, I would've had to download MinIO, install dependencies, configure files, mess with permissions, and spend hours debugging. With Docker, I ran one command and everything was set up and ready to go. I went from "this is going to take forever" to "it's already running?" in 30 seconds. That's the power of containers.

**3. What is a "bucket" in the context of cloud storage?**

A bucket is basically just a folder for cloud storage. You make one bucket for photos, another for backups, another for whatever else. Each one is separate and has its own permissions and rules. Simple concept once you understand it.

**4. How do you think large enterprise companies ensure their object storage data is not lost if the physical server crashes?**

They make copies everywhere. If one server crashes, they've got backups in other data centers across different cities. It's basically impossible to lose data that way. Companies like AWS guarantee your data will survive any disaster.

**5. How is your confidence in navigating the Linux command line growing?**

I'm shocked at how comfortable I am now. A few labs ago, typing commands felt sketchy. Now I understand what's happening. Docker containers and managing ports used to seem like magic. Now it feels normal. I'm thinking like an engineer.
