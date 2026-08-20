# Requirements:

- Create a separate folder for each main topic (docker-compose & multi-stage-build) and a subfolder for each task.
- Use Volume/Bind-Mounts to copy the required files into the respective containers.
- Use the test files I provided in the [testfiles](./testfiles/) folder as apps in your Multi-Stage Builds.
- Some files like the nginx.conf should be created by you.

## Docker Compose:

Use docker-compose to set up simple containers. It's important that you use YAML for this.

### Task 1: Simple Build

Create a YAML file named docker-compose.yml that describes a simple Docker build for a website.
The website is located in the current directory and contains only HTML files. Use the official "nginx"
Docker image and ensure that the website is mapped to port 80 in the container.

### Task 2: Customizing the Build

Take the Docker image version from Task 1 and modify the YAML file to copy a custom
configuration file nginx.conf from your current directory into the container. The configuration file should be located in the container path /etc/nginx/conf.d/.

### Task 3: Multiple Services

Extend the YAML file from Task 2 to add a second service. Use the "alpine"
Docker image and name the service "data-service". This service should mount the current directory
as a volume in the container.

### Task 4: Environment Variables

Update the YAML file from Task 3 to add environment variables for the "nginx" service.
Define an environment variable named "SERVER_NAME" with any value of your choice.

### Task 5: Network Communication

Add a network definition to your Docker Compose setup from Task 4. Name the network
"my-network". Update the service definitions to join this network.

# Multi-Stage Builds:

## Task:

Use Dockerbuild to create so-called Multi-Stage Builds. The files needed for this
are in the [testfiles](./testfiles/) folder.
Research what Multi-Stage Builds are, how they work, and why you should
use them as opposed to normal builds.

### 1. Simple Multi-Stage Dockerfile:

Create a simple Dockerfile for any application
(e.g., a "Hello World" program).
Use two stages: One for the build process and one for
running the program.

### 2. Python Application:

Create a Dockerfile for a simple Python application
that prints a file. Use Multi-Stage Builds to optimize the
Python image.

### 3. Node.js App with Dependencies:

Create a Dockerfile for a Node.js application
(e.g., a simple Express.js server project).
Use two stages to install the dependencies and
start the application.

### 4. Java Application:

Try to create a Dockerfile for a simple Java application
(e.g., a "Hello World" in Java).
Use Multi-Stage Builds to make the build process more efficient.

### 5. Optimize Build Size:

Create a Dockerfile for an application of your choice and
make sure to include only the necessary files and dependencies.
Compare the size of the final image with that of a
conventional build, copy the result here:

| Image                |      Size |
| :------------------- | --------: |
| optimized-go-build   |   9.17 MB |
| unoptimized-go-build | 248.73 MB |

### 6. Simple Website with Nginx:

Create a Multi-Stage Dockerfile for a simple HTML website.
Use Nginx as a web server in the final stage to host the website.

### 7. Debugging and Output:

Add debugging instructions (e.g., print statements) to the code
of your application.
Show how you can make the output visible during the build process.

### 8. Using Docker Compose:

Create a simple Docker Compose file to start your Multi-Stage
application and its dependencies.
