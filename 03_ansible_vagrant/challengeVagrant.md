Requirements:
- Create a separate subfolder for each task.


###############################
# Task 1: Basic Vagrant Setup #
###############################

Create a Vagrantfile and set up a basic VM. 

###########################################
# Task 2: Provisioning with Shell Scripts #
###########################################

Initialize a new Vagrant environment and use a shell script to set up a Nginx 
service.

###########################
# Task 3: Port Forwarding #
###########################

Configure port forwarding to acces Nginx from your host machine. 

##########################
# Task 4: Shared Folders #
##########################

Set up a shared folder between your host machine and the VM to serve a simple 
HTML site. 

#################################
# Task 5: Multi-VM Environments #
#################################

Set up two VMs in the same Environment. 

#####################################
# Task 6: Using different Providers #
#####################################

Enable private networking between the two VMs. 

#####################################
# Task 7: Host-Only Network Adapter #
#####################################

Configure a host-only network adapter for both VMs, so that both VMs can be 
reached from the host machine.

##############################################
# Task 8: Multi-VM provisioning dependencies #
##############################################

Set up interdependent provisioning between multiple VMs, so that one VMs 
provisioning depends on the provisioning of the other and uses data from it. 

############################################
# Task 9: Custom Nginx Reverse proxy setup #
############################################

Configure two VMs, configure one to serve Nginx and one to serve Nginx as 
reverse proxy for the other.

########################################
# Task 10: Vagrant Triggers and Events #
########################################

Set up a Vagrant trigger to run a script that checks for required Plugins or 
dependencies before the VMs are provisioned. 

##################################
# Task 11: Resource Optimization #
##################################

Set up CPU and RAM limits for your VMs, make sure it is still running smoothly.

#########################
# Task 12: Full-fledged #
#########################

Enable your VMs to appear as full-fledged devices on your physical network with
bridged networking. 

#######################################################
# Task 13: Development Environment for multiple Users #
#######################################################

Create a Vagrant environment that provisions an individual development VM per user.
The Vagrant configuration should allow easy addition of new users by generating a 
VM per user.