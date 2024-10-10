# Task Description:

Solve the tasks below and document your solution paths in the form of comments within the respective Bash file. It's not necessary to create a separate file for each task/script; for the simpler tasks, it's sufficient to write the solutions under the question. For the advanced tasks, however, you should create a separate file and place it in a separate solution folder, this folder is already created in the shared GitHub repository.

## Task 1: Basic Commands

# Navigate to the home directory.

# Create a new directory named "CLI-Exercise".

# Change to the new directory.

# Create an empty text file named "notes.txt".

# List the contents of the directory to ensure the file was created.

# Append the text "First Note" to the file "notes.txt".

# Display the contents of the file "notes.txt".

### SOLUTION
# cd
# mkdir CLI-Exercise
# cd CLI-Exercise
# touch notes.txt
# ls
# echo "First Note" >> notes.txt
# cat notes.txt


## Task 2: File and Directory Renaming

# Rename the file "notes.txt" to "my_notes.txt".

# Create a new directory named "Backup".

# Move the file "my_notes.txt" to the "Backup" directory.

### SOLUTION
#!/bin/bash
# mkdir Backup
# mv notes.txt Backup/my_notes.txt


## Task 3: File Search and Filtering

# Change back to the home directory.

# Create multiple text files with different names and the text content "important" using a for-loop.

# Search for all files in the solution directory that contain the word "important".

# Delete all found files.

### SOLUTION
#!/bin/bash
# cd
# for i in {0..4}
# do
#	echo "important" > file_$i.txt
# done
# grep -Rl "important" --exclude-dir="*" | xargs rm


## Task 4: Pipelines and Command Combinations

# Create a text file "numbers.txt" and add some numbers (one per line).

# Filter the file "numbers.txt" for lines that are greater than 50.

# Sort the filtered numbers in ascending order.

# Calculate the sum of all numbers in the sorted list.

### SOLUTION
#!/bin/bash
# Variables
# greater_fifty=()
# sum=0
# for i in {0..99}
# do
#	echo $((1 + $RANDOM % 100)) >> numbers.txt
# done
#
# while read line
# do
#	if ((line > 50))
#	then
#		greater_fifty+=("$line")
#	fi
# done < numbers.txt
#
# IFS=$'\n' sorted=($(sort -n <<<"${greater_fifty[*]}"))
# unset IFS
#
# for num in "${sorted[@]}"
# do
#	((sum +=num))
# done
#
# echo $sum


## Task 5: Environment Variables and Command Parameters

# Create an environment variable named "MY_NAME" and set it to your name.

# Write a shell script named "greeting.sh" that outputs "Hello, <YOUR NAME>!",

# where <YOUR NAME> is replaced by the value of the set environment variable.

# Give the script the ability to accept a greeting text

# as a parameter, and adjust the output accordingly. - also document your input.




## Task 6: Advanced Scripts (please save each as a separate file and place in a separate script folder)

# Backup Script: Create a script that automatically creates backups of

# certain files or directories. You could use a

# timestamp or version number convention to name the

# backup files.



# Word Counter: Write a script that counts and outputs the number of words in a

# given file.
DONE


# Search and Replace: Develop a script that searches for a specific

# string in a file and replaces it with another string.



# Automated File Processing: Write a script that automatically

# reduces images in a directory to reduce their file size.



# Password Generator: Create a script that generates random passwords.

# You could use parameters to adjust the length and the

# use of special characters.



# Text-based Game: Create a simple text-based game

# where the player can make decisions that influence the course

# of the story - use only variables, echo, read, case, if & else commands and queries

# Tip: Decisions/probabilities can be queried via a modulo (%) function



# System Monitoring: Develop a script that displays important

# system information such as CPU usage, memory usage, and

# connected hardware.
