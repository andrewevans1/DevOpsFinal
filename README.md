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
  - Download and place in working directory
3. Create security group
  - ensure port 22 is open to allow ssh
4. Launch instance
  - use security group and key pair created above
5. Connect to EC2 instance
  - ssh -i <keypem> ec2-user@<ec2 ip address> 
 
### Set Up Jenkins Server on AWS EC2 Instance
1. Download and install Jenkins 
  - sudo yum update -y
  - sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
  - sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
  - sudo yum install jenkins java-1.8.0-openjdk-devel -y
  - sudo systemctl daemon-reload
  - sudo systemctl start jenkins
  - sudo systemctl status jenkins

2. Navigate to the jenkins interface running on EC2
  - http://<your_server_public_DNS>:8080 (note, only http is used)
  - sign in using initial admin password -- sudo cat /var/lib/jenkins/secrets/initialAdminPassword 

3. Install suggested plugins
4. Install the "Amazon EC2" plugin
  
### Provide AWS Credentials to Jenkins
1. Sign in to the AWS Management Console and navigate to IAM.
2. Select Users from side navigation and choose Add user.
3. Enter the User name as Jenkins and grant Programmatic access to this user.
4. On the next page, select Attach existing policies directly and choose Create Policy.
5. Select the JSON tab and add the policy at AWSJenkins.json. Replace <YOUR_ACCOUNT_ID> with your AWS account ID:

  
  1. Navigate back to the Jenkins dashboard, then select Configure a Cloud.
  - Add a new cloud > Amazon EC2
  - 

### Create Git Repository with Application
1. From GitHub, create a new repository
2. Clone empty repository to local working directory
3. Download a sample java app from start.spring.io
  - Maven Project
  - Java
  - 2.5.3
  - War
  - Java 11
  - Add Depenedencies > Spring Web
4. Place project files in the git repository directory
5. Push changes to remote repository

### Create Ansible Playbook

### Create Build Pipeline 
- Build on SCM trigger
- save build products
- Run ansible playbook to create docker image with build product

### Remove Containers
