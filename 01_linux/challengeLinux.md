# Task Description:

Solve the tasks below and document your solution paths in the form of comments within the respective Bash file. It's not necessary to create a separate file for each task/script; for the simpler tasks, it's sufficient to write the solutions under the question and/or the codeblock underneath.#
For the advanced tasks, however, you should create a separate file and place it in a separate solution folder, this folder is already created in the shared GitHub repository.

# Bash Scripting Challenges

## Task 1: Basic Commands

- Navigate to the home directory
- Create a new directory named "CLI-Exercise"
- Change to the new directory
- Create an empty text file named "notes.txt"
- List the contents of the directory to ensure the file was created
- Append the text "First Note" to the file "notes.txt"
- Display the contents of the file "notes.txt"

```bash
# Your solution here
```

## Task 2: File and Directory Renaming

- Rename the file "notes.txt" to "my_notes.txt"
- Create a new directory named "Backup"
- Move the file "my_notes.txt" to the "Backup" directory

```bash
# Your solution here
```

## Task 3: File Search and Filtering

- Change back to the home directory
- Create multiple text files with different names and the text content "important" using a for-loop
- Search for all files in the solution directory that contain the word "important"
- Delete all found files

```bash
# Your solution here
```

## Task 4: Pipelines and Command Combinations

- Create a text file "numbers.txt" and add some numbers (one per line)
- Filter the file "numbers.txt" for lines that are greater than 50
- Sort the filtered numbers in ascending order
- Calculate the sum of all numbers in the sorted list

```bash
# Your solution here
```

## Task 5: Environment Variables and Command Parameters

- Create an environment variable named "MY_NAME" and set it to your name
- Write a shell script named "greeting.sh" that outputs "Hello, <YOUR NAME>!"
  where <YOUR NAME> is replaced by the value of the set environment variable
- Give the script the ability to accept a greeting text as a parameter
- Adjust the output accordingly and document your input

```bash
# Your solution here
```

## Task 6: Advanced Scripts

_Note: Please save each script as a separate file and place in a separate script folder_

### Backup Script

Create a script that automatically creates backups of certain files or directories. You could use a timestamp or version number convention to name the backup files.

```bash
# Your solution here
```

### Word Counter

Write a script that counts and outputs the number of words in a given file.

```bash
# Your solution here
```

### Search and Replace

Develop a script that searches for a specific string in a file and replaces it with another string.

```bash
# Your solution here
```

### Automated File Processing

Write a script that automatically reduces images in a directory to reduce their file size.

```bash
# Your solution here
```

### Password Generator

Create a script that generates random passwords. You could use parameters to adjust the length and the use of special characters.

```bash
# Your solution here
```

### Text-based Game

Create a simple text-based game where the player can make decisions that influence the course of the story.

- Use only variables, echo, read, case, if & else commands and queries
- Tip: Decisions/probabilities can be queried via a modulo (%) function

```bash
# Your solution here
```

### System Monitoring

Develop a script that displays important system information such as CPU usage, memory usage, and connected hardware. Make this readable in markdown.

```bash
# Your solution here
```
