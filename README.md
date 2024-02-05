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

g. Include a webserver and self-signed certificate.

h. Create a docker-compose file to define and run the images.

i. Make your images as small and flexible as possible and follow best practices 
to support dev and prod builds.

## Step 1:

install all prerequisites:

PHP: ```sudo apt-get install php8.1-xml```


Composer: ```curl -sS https://getcomposer.org/installer | php```


Docker:

Install packages to allow apt to use a repository over HTTPS:

```sudo apt install -y apt-transport-https ca-certificates curl software-properties-common```

Add Docker's official GPG key:

```curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg```

Set up the stable Docker repository:

```echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null```

Install the latest version of Docker:

```sudo apt install -y docker-ce docker-ce-cli containerd.io```

Verify that Docker is installed correctly by running the following command:

```sudo docker --version```

## Step 2:

Create project and required files

```composer create-project laravel/laravel laravel-docker```

Create Dockerfile:

```
# Use PHP with Alpine
FROM php:8.1-fpm-alpine

# Install dependencies
RUN docker-php-ext-install pdo pdo_mysql
RUN apk --update add nginx

# Set working directory
WORKDIR /app

# Copy SSL certificate and key to the container
# COPY ./nginx/ssl/selfsigned.crt /etc/nginx/ssl/selfsigned.crt
# COPY ./nginx/ssl/selfsigned.key /etc/nginx/ssl/selfsigned.key

# Copy Laravel project files
COPY .. /app

# Copy Nginx configuration
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

# Copy and set permissions for the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose port 8000 and 443
EXPOSE 8000 443

# Use the entrypoint script to set permissions and start services
ENTRYPOINT ["/entrypoint.sh"]
```








   
