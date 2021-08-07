# DevOpsFinal
Capstone project for dev ops course

## Hangout Point
An entertainment company like BookMyShow where users book their tickets have multiple users accessing their web app. Due to less infrastructure availability, they use less machines and provide the required structure. This method includes many weaknesses such as:

Developers must wait till the complete software development for the test results.
There is a huge possibility of bugs in the test results.
Delivery process of the software is slow.
The quality of software is a concern due to continuous feedback referring to things like coding or architectural issues, build failures, test conditions, and file release uploads.
The objective is to implement the automation of the build and release process for
their product.

### Implementation requirements:

1. Set up the Jenkins server in master or slave architecture
2. Use the Jenkins plugins to perform the computation part on the Docker containers
3. Create Jenkins pipeline script
4. Use the GIT web hook to schedule the job on check-in or poll SCM
5. Build an image using the artifacts and deploy them on containers
6. Remove the container stack after completing the job

### The following tools must be used:
EC2
Jenkins
Docker
Ansible, Chef, or Puppet


## Solution
### Create AWS EC2 Instance
https://www.jenkins.io/doc/tutorials/tutorial-for-installing-jenkins-on-AWS/
1. Create AWS Account
2. Create key pair
3. Create security group
4. Launch instance
  a. use security group and key pair created above
5. Connect to EC2 instance
 
### Set Up Jenkins Server on AWS EC2 Instance

### Create GitHub Repository with Application

### Create Ansible Playbook

### Create Build Pipeline 
- Build on SCM trigger
- save build products
- Run ansible playbook to create docker image with build product

### Remove Containers
