# Test Assignment

## Toolstack:

- Vagrant CLI
- Ansible CLI
- VirtualBox
- Linux (Ubuntu Server)
- Docker
- PostgreSQL or MariaDB
- phpMyAdmin
- SFTP

## Tasks:

- Create 3 virtual machines (Ubuntu Server) using Vagrant
- The VMs should be connected in a "virtual" network and be able to reach each other
- Additionally, create documentation of your code and individual steps, and present your result during the live code review
- Use Ansible for the configuration of individual servers
- At the end, the following should be set up:

### Server 1:

Web server (Nginx or Apache) with a small test website and PHP support

### Server 2:

Install Docker, deploy WordPress or similar as a Docker container. The WordPress container should be connected to the database from Server 3 at the end.

### Server 3:

Provide database (MySQL, MariaDB) for Server 2 and connect with WordPress - set up via Ansible. Please set up the database natively without Docker.

## Additional Task (optional):

There are "bonus points" if you follow these best practices:

- Use an Ansible control node and execute the configuration through it instead of your local machine
- Use Ansible Vault to encrypt passwords
- Use Ansible tags to group individual steps
- Use Ansible roles to group individual steps
- Use Ansible templates and Jinja2 to dynamically create configuration files

## Happy Coding! 🚀
