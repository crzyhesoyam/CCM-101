# Final Reflection

We started CCM101 as a Junior Trainee who treated the terminal as something to be
careful around. Early missions taught us the basics: navigating Linux, managing files
and permissions, and understanding what a virtual machine actually is. Each later
mission added a layer: containers, Docker Compose, networking, persistent storage,
security, and finally automation.

Mission 10 was different because there was no manual to follow. Designing the
architecture first, with the hypervisor, VM, firewall, containers, and volumes on one
diagram, changed how we approached the build. we stopped thinking in individual
commands and started thinking in systems. The mistakes taught us the most. Enabling
UFW without allowing SSH first would have locked us out, and learning that Docker
bypasses UFW for published ports made us publish only what was necessary.

The biggest lesson was that a system is only production-ready if it can recover. Writing
the backup script, scheduling it with cron, and then testing a restore showed us that
a backup you have never restored is only a hope. Rebooting the VM and finding our data
intact proved why persistent volumes matter.

We now see cloud computing as repeatable, documented, and recoverable infrastructure,
not just running servers. As the mission said, an architect does not follow a manual,
they write it.
