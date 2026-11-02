# An Investigation into the World of Containers
---
## Introduction
In the modern software development, containers are crucial in deploying, scaling, and managing software. These containers provide environment level isolation which means that the processes, network settings, and file systems are isolated from the host kernel and other containers. However, like many technologies, containers are an abstraction and our assumptions about what is happening do not always match what is actually happening under the hood. Many vulnerabilities are found by exploiting these assumptions and that is what I will be investigating in this lab. This report will be split into two parts. The first part will explain how containers works under the hood and the second part will demonstrate how containers can be exploited/mismanaged.

## Part 1: How Containers Work
### Process Isolation
Docker uses Linux namespaces and cgroups to implement containers. The namespaces limit what a process can see and interact with while cgroups limits resource usage so that the host or other containers do not hog resources. Here I created a new namespace on my Linux machine. When I check processes are running, this is all I see:

<img width="510" height="93" alt="image" src="https://github.com/user-attachments/assets/22b388bb-36de-4ac1-9149-947283ff0801" />

### Network Settings

### File Systems

## Part 2: How Containers can be exploited


