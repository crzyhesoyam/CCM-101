## Mission Overview
A small company is planning to migrate its services to the cloud. Before any servers are deployed, this lab simulates the role of a cloud engineer tasked with inspecting a temporary Linux server (provisioned via KillerCoda), identifying its infrastructure components, and preparing documentation to help senior engineers design the final cloud architecture.

## Objectives
- Investigate a Linux server running in a cloud environment.
- Identify and explain the major components of cloud infrastructure.
- Compare equivalent cloud services offered by AWS, Microsoft Azure, and Google Cloud Platform.
- Design a simple cloud infrastructure diagram for a fictional company.
- Produce organized, well-formatted technical documentation.
- Maintain a professional GitHub portfolio through structured commits.

## Cloud Infrastructure Components
Four core components were identified and documented in `cloud-components.md`:
- **Compute Resources** – the processing power (CPU/RAM) that runs workloads.
- **Storage Resources** – persistent storage for data, files, and logs.
- **Networking Resources** – connects the server to users and other systems.
- **Operating System** – manages hardware and provides the environment for applications to run.

Each component was related back to findings from the KillerCoda Linux server (see `infrastructure-report.md`).

## Tools Used
- **KillerCoda** – cloud-based Linux terminal environment
- **GitHub** – version control and portfolio hosting
- **Draw.io / Excalidraw / PowerPoint** – for designing the infrastructure diagram
- **Markdown** – for structured documentation

## Linux Commands Executed
| Command | Purpose |
|---|---|
| `cat /etc/os-release` | Identify the operating system |
| `uname -r` | Check the kernel version |
| `lscpu` | View CPU model and core count |
| `nproc` | Count available CPU cores |
| `free -h` | Check total RAM |
| `df -h` | Check disk capacity |
| `mount \| column -t` | List mounted file systems |
| `hostname` | Display the server's hostname |
| `hostname -I` / `ip a` | Display the server's IP address |

## Skills Learned
- Navigating and inspecting a Linux server through the command line.
- Mapping physical/virtual server details to cloud infrastructure concepts.
- Comparing services across major cloud providers.
- Writing clear technical documentation in Markdown.
- Structuring and maintaining a GitHub repository as a professional portfolio.

## Challenges Encountered
- Understanding how abstract cloud concepts (compute, storage, networking) map to concrete Linux commands and outputs.
- Formatting Markdown tables correctly so they render properly on GitHub.
- Deciding how to represent a cloud architecture diagram clearly with limited prior design tool experience.
