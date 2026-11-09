# An Investigation into the World of Containers

<img width="1549" height="912" alt="image" src="https://github.com/user-attachments/assets/847658f7-2df6-4dd3-8aa9-38790bbb2fdc" />

---
## Introduction
In the modern software development, containers are crucial in deploying, scaling, and managing software. These containers provide environment level isolation which means that the processes, network settings, and file systems are isolated from the host kernel and other containers. However, like many technologies, containers are an abstraction and our assumptions about what is happening do not always match what is actually happening under the hood. Many vulnerabilities are found by exploiting these assumptions and that is what I will be investigating in this lab. This report will be split into two parts. The first part will explain how containers works under the hood and the second part will demonstrate how containers can be exploited/mismanaged.

## Part 1: How Containers Work
---
### Environment Isolation
Docker uses Linux namespaces and `cgroups` to implement containers. The namespaces limit what a process can see and interact with while `cgroups` limits resource usage so that the host or other containers do not hog resources. Here I created a new namespace on my Linux machine. When I check processes are running, this is all I see:

<img width="510" height="93" alt="image" src="https://github.com/user-attachments/assets/22b388bb-36de-4ac1-9149-947283ff0801" />

As mentioned above `cgroups` helps manage the resources of system so that the host and all containers can function. There are so many things that you can do with `cgroups` such as setting a memory usage ceiling or floor, configuring CPU or I/O usage, and so much more.

### Network Settings
In order to create an isolated network on the container a specialized Linux namespace is created known as `ntns`. This namespace is essentially a copy of the host network stack which allows the namespace to have its own routes, firewall rules, and network devices.

However containers still need to be able to communicate with each other and the host. This can be achieved via a `veth` /virtual Ethernet device.The devices act a virtual wired Ethernet connection between the other containers or host. These `veth` devices come in pairs which allows for one to be assigned to a container and the other to remain on the host.

Although we are still missing one piece that will allow to containers on the same network to communicate. Linux provides that with the bridge device. The bridge device essentially acts as a switch for the containers and the host. This device allows for packets to be sent between containers, from host to container and vice versa. 
### File Systems
To preserve environment level isolation each container must have their own file system. This is done via the `/proc` directory which contains crucial information about the processes in a system and the system itself. This ensures that each container has an accurate view of its processes. Now in order to create isolated file systems each container must be created in its own container as it inherits the filesystem of its parent folder. If two containers are created in the same parent folder they will have the same `/proc`. 

## Part 2: Assumptions About Containers and How They Can Be Exploited
---
### Assumption #1: Network traffic from and forwarded by the host can be trusted implicitly.

### How that assumption can be exploited

### Mitigations

---
### Assumption #2: If a container image is hosted in the Docker Hub registry it is safe to use.

### How that assumption can be exploited

### Mitigations

---
### Assumption #3: If something happens to the host kernel in one container it won't affect the host or other containers.

### How that assumption can be exploited

### Mitigations

---
### Assumption #4: A container is an isolated system and the host cannot be accessed via the container.

### How that assumption can be exploited

### Mitigations
