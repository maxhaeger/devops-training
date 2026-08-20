find /home/dorde/git/devops-training/01_linux/task-6 -type f -name "*.txt" | tar -czf /home/dorde/git/devops-training/01_linux/task-6/backup-$(date +%Y%m%d).tar.gz -T -
