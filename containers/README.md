# An Investigation into the World of Containers
---
## Introduction
In the modern software development, containers are crucial in deploying, scaling, and managing software. These containers provide environment level isolation which means that the processes, network settings, and file systems are isolated from the host kernel and other containers. However, like many technologies, containers are an abstraction and our assumptions about what is happening do not always match what is actually happening under the hood. Many vulnerabilities are found by exploiting these assumptions and that is what I will be investigating in this lab. This report will contain my findings from my investigation into Docker.

## Part 1: Process Isolation
Docker uses Linux namespaces and cgroups to implement containers. The namespaces limit what a process can see and interact with while cgroups limits resource usage so that the host or other containers do not hog resources. 
