# Laravel Docker Project

### 1) What is containerization?

Containerization is an application-centric method to deliver high-performing and scalable applications. It involves encapsulating an application and its dependencies into a single unit called a container. This container can then run consotently across different computing environments. It solves the common problem of "it works on mine, so why doesnt it work on yours?".

A key componont associated with containers is a container image. This is a package containing the application code and its dependencies. It represents the source of the container to offer an isolated executable environment for the application.

### 2) Compare the pros and cons of deploying Jenkins using a pre-built AMI (such as Bitnami package for Jenkins) vs defining and deploying a custom docker image?

### Pre-Built AMI:

#### Pros:
Ease of Use: Pre-built AMIs come with a pre-configured environment, reducing the setup time and complexity. Users can launch an instance with Jenkins installed quickly

Configuration Management: AMIs may include pre-configured settings, plugins, and optimizations specific to Jenkins, making it easier for users who don't want to handle fine-tuning or customization.

Documentation and Support: Pre-built solutions often come with documentation and support from the provider (e.g., Bitnami), which can be valuable for users who need assistance.

#### Cons:
Limited Customization: Pre-built AMIs may have limitations in terms of customization. If specific configurations or plugins are required, users might need to adapt to the predefined setup.

Dependency on the Provider: Users are dependent on the AMI provider for updates, security patches, and new Jenkins releases. It may lead to delays in getting the latest Jenkins features.

Resource Usage: Pre-built AMIs might include components that are not needed, leading to higher resource usage than a more minimalistic, custom setup.

### Custom Docker Image:
#### Pros:
Customization: Docker allows for complete customization. Users can define a custom Docker image tailored to specific needs, including specific Jenkins configurations, plugins, and versions.

Consistency Across Environments: Docker images provide consistency in different environments, from development to production, reducing the "it works on my machine" problem.

Scalability: Docker containers are lightweight and scalable, making it easier to manage multiple Jenkins instances efficiently.

#### Cons:
Learning Curve: Creating and managing Docker images may have a learning curve, especially for users who are not familiar with Docker.

Maintenance: Custom Docker images require maintenance for security updates and changes in configurations. Users need to stay on top of updates and manage their Dockerfiles.

### 3 & 4)
a. Create a new Laravel project. 
i. Hint: composer create-project laravel/laravel example-app 
b. Create a Dockerfile. 
c. Use Alpine Linux. 
d. Provide example build and run commands. 
e. Push your code and solution to a public git repository and provide links. 
f. The screen below should display when visiting http://localhost:8000





   
