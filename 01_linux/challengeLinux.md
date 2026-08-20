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
cd ~
mkdir "CLI-Exercise"
cd CLI-Exercise/
touch notes.txt
echo "First Note" >> notes.txt 
cat notes.txt
```

## Task 2: File and Directory Renaming

- Rename the file "notes.txt" to "my_notes.txt"
- Create a new directory named "Backup"
- Move the file "my_notes.txt" to the "Backup" directory

```bash
mv notes.txt my_notes.txt
mkdir Backup
mv my_notes.txt Backup/
```

## Task 3: File Search and Filtering

- Change back to the home directory
- Create multiple text files with different names and the text content "important" using a for-loop
- Search for all files in the solution directory that contain the word "important"
- Delete all found files

```bash
cd ~
for i in "very low", "low", "middle", "high", "very high"; do touch "important $i"; done
find -name "important*" -type f -print | xargs /bin/rm -f
rm -r imporant*
```

## Task 4: Pipelines and Command Combinations

- Create a text file "numbers.txt" and add some numbers (one per line)
- Filter the file "numbers.txt" for lines that are greater than 50
- Sort the filtered numbers in ascending order
- Calculate the sum of all numbers in the sorted list

```bash
printf "10\n20\n30\n40\n50\n" >> numbers.txt
awk '$1 > 50' numbers.txt
awk '$1 > 50' numbers.txt | sort -n numbers
awk '$1 > 50' numbers.txt | sort -n | awk '{sum += $1} END {print sum}'
```

## Task 5: Environment Variables and Command Parameters

- Create an environment variable named "MY_NAME" and set it to your name
- Write a shell script named "greeting.sh" that outputs "Hello, <YOUR NAME>!"
  where <YOUR NAME> is replaced by the value of the set environment variable
- Give the script the ability to accept a greeting text as a parameter
- Adjust the output accordingly and document your input

```bash
# Your solution here
export MY_NAME="Dorde Kitonjic"
printf 'echo "Hello, $MY_NAME!"' >> greeting.sh
printf 'echo "Enter greeting"; read greetings; echo "$greetings, $MY_NAME!"' >> greeting.sh
```

## Task 6: Advanced Scripts

_Note: Please save each script as a separate file and place in a separate script folder_

### Backup Script

Create a script that automatically creates backups of certain files or directories. You could use a timestamp or version number convention to name the backup files.

```bash
find /home/dorde/git/devops-training/01_linux/task-6 -type f -name "*.txt" | tar -czf /home/dorde/git/devops-training/01_linux/task-6/backup-$(date +%Y%m%d).tar.gz -T -
crontab for autmotatic run
```

### Word Counter

Write a script that counts and outputs the number of words in a given file.

```bash
echo "Type location to file"
read location
wc -w $location
```

### Search and Replace

Develop a script that searches for a specific string in a file and replaces it with another string.

```bash
echo "Type word which should be searched and replaced"
read search
echo "Now type word which which it should be replaced"
read replace
echo "Now path to file"
read path
sed -i "s/$search/$replace/gI" "$path"
```

### Automated File Processing

Write a script that automatically reduces images in a directory to reduce their file size.

```bash
#!/bin/bash
echo "Welcome to the image reducer."
sleep 1
echo "Give a path where images are located."
read path
echo "Give the percent of reduction (Number only!)."
read percent
echo "Give a path where converted images will be stored."
read new_path

for file in "$path"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        filename_no_ext="${filename%.*}"
        magick "$file" -resize "${percent}%" "$new_path/${filename_no_ext}.png"
    fi
done
```

### Password Generator

Create a script that generates random passwords. You could use parameters to adjust the length and the use of special characters.

```bash
#!/bin/bash

echo "Welcome to the password generator."
sleep 1
echo "How long should your password be?"
read length
sleep 1
echo "Should special charachters be used? (y/n)"
read charachters

charset='A-Za-z0-9'

if [ "$charachters" = "y" ] || [ "$charachters" = "yes" ]; then
    charset='A-Za-z0-9!@#$%^&*()'
fi

password=$(openssl rand -base64 100 | tr -dc "$charset" | head -c "$length")

echo "Your generated password is:"
echo "$password"
```

### Text-based Game

Create a simple text-based game where the player can make decisions that influence the course of the story.

- Use only variables, echo, read, case, if & else commands and queries
- Tip: Decisions/probabilities can be queried via a modulo (%) function

```bash
#!/bin/bash
echo "Welcome to the Cyberpunk story: NEON OVERDRIVE: THE ARASAKA HEIST"
sleep 2
echo "Rain hits the reinforced glass of your hideout in Watson as your Cyberdeck hums with heat. Deep inside the subnet of Arasaka Tower, your optic overlays flicker blue with raw streams of stolen corporate data. You have finally breached the vault containing PROJECT_CHIMERA.dat — a black-budget military AI code.

Suddenly, your terminal display turns violent crimson. A shrill neural alarm echoes directly inside your audio-implant:

[CRITICAL WARNING: NETWATCH BLACK ICE DETECTED]
[TRACE PROGRESS: 88% ... TRACE COMPLETE IN 10 SECONDS]
[TARGETING: LOCAL SUBNET & PHYSICAL NEURAL IMPLANTS]

The ICE (Intrusion Countermeasure Electronics) is lock-on trace routing directly to your brain. You have seconds before your synapse wiring gets completely fried or Trauma Team dispatches an automated strike team to your physical coordinates.

What is your move, Runner?"
echo "1) Deploy an obsolete Daemon Virus to jam the NetWatch trace algorithms."
echo "2) Forcefully Jack Out right now by manually yanking the fiber-optic cable from your neck port."
echo "3) Attempt to Reroute your connection through an illegal Darknet proxy node hidden in the Underground Grid."

read -p "Enter your choice (1, 2, or 3): " move_1
case $move_1 in
    1) echo "You initiate the Daemon Virus sequence...";;
    2) echo "You reach behind your neck and yank the fiber cable!";;
    3) echo "You jump into the unmapped Darknet proxy node...";;
    *) 
        echo "Invalid choice. Hesitation was fatal. The ICE has fried your neural implants. You are dead."
        exit 1
        ;;
esac

if [[ $move_1 == "1" ]]; then
    echo "The Daemon Virus successfully jams the NetWatch trace algorithms. You have bought yourself some time."
    sleep 2
    echo "However, the ICE is adapting. It begins to deploy countermeasures."
    echo "You need to make another decision quickly."
    echo "1) Attempt to override the ICE with a brute-force attack."
    echo "2) Try to find a backdoor in the Arasaka Tower's security protocols."
    read -p "Enter your choice (1 or 2): " move_2
    case $move_2 in
        1) echo "You launch a brute-force attack...";;
        2) echo "You search for a backdoor in the security protocols...";;
        *) 
            echo "Invalid choice. The ICE has adapted and fried your neural implants. You are dead."
            exit 1
            ;;
    esac
    if [[ $move_2 == "1" ]]; then
        echo "You channel all remaining grid power into a raw, unfiltered override ping aimed directly at the NetWatch firewall nodes. Sparks erupt from your Cyberdeck's heatsink as your optics overflow with corrupted binary code."
            if (( RANDOM % 2 == 0 )); then
                echo "The sheer brute force shatters the ICE layer! The red emergency overlays collapse into calm blue streams as PROJECT_CHIMERA.dat hits 100% download completion. Before the server kicks you out, your deck auto-extracts an encrypted corporate access key into your storage bay."
                has_datashard=1
                has_key=0
            else
                echo "The ICE reflects your attack straight back through your optical implants. A high-voltage feedback spike fries your brain before you can pull the plug."
                echo "[GAME OVER: SYNAPTIC FLATLINE]"
                exit 1
            fi
    elif [[ $move_2 == "2" ]]; then
        echo "You abandon the main network nodes and dive deep into Arasaka’s legacy subroutines, searching for unpatched maintenance ports. You spot an old server channel and reroute your feed just in time! You safely escape the NetWatch trace without burning your brain, but the file transfer stops at 50%. As the connection terminates, your rig extracts a physical security bypass dongle from the port."
        has_datashard=0
        has_key=1
    fi
elif [[ $move_1 == "2" ]]; then
    echo "You wake up groggy on the floor of your Watson apartment, smelling burnt wiring. The emergency Jack Out saved your life, but the high-voltage feedback left your rig fried and your pockets completely empty. You grab your weapon and head for the exit before Trauma Team locates your signal."
    has_datashard=0
    has_key=0
elif [[ $move_1 == "3" ]]; then
    echo "The unstable Underground Grid holds long enough for you to sever the active trace, but the bad signal corrupts the stolen data stream. You disconnect safely from the deck, but leave without any bonus items or shards."
    has_datashard=0
    has_key=0
else
    echo "Your hesitation has cost you dearly. The ICE has fried your neural implants. You are dead."
    exit 1
fi

echo "You sling your gear bag over your shoulder, rip the remaining optic cables from your neck port, and sprint up the wet concrete stairwell to the roof.

The Watson rain is blinding. In the center of the slick landing pad, your automated EV-24 Escape AV idles with its thrusters whining against the storm.

Before you reach the cabin door, a heavy metallic shadow drops from the smog above with a thunderous crash. An Arasaka Heavy Combat Android — equipped with dual arm-mounted miniguns and red optical sensors — steps directly into the line of fire between you and your ride.

Its vocal synthesizer booms through the storm:

[CLEARANCE PROTOCOL: IDENTIFY AUTHORIZED CREDENTIALS OR FACE IMMEDIATE TERMINATION.]

The AV engines are roaring just 15 meters behind the war machine."

echo "What is your final move, Runner?"
echo "1: Attempt a real-time Cyber-Hack on the Android's optical targeting array."
echo "2: Access your Inventory to deploy a looted asset or override hardware."
echo "3: Make a desperate Sprint past the machine directly toward the open AV door."

read -p "Enter your final choice (1, 2, or 3): " move_3

case $move_3 in
    1) 
        if (( RANDOM % 3 == 0 )); then
            echo "VICTORY: HEIST COMPLETED!"
        else
            echo "GAME OVER: TERMINATED"
        fi
        ;;
    2) 
        if [[ $has_datashard -eq 1 ]]; then
            echo "PERFECT ENDING: CORPORATE PHANTOM"
        elif [[ $has_key -eq 1 ]]; then
            echo "VICTORY: NARROW ESCAPE"
        else
            echo "GAME OVER: UNPREPARED"
        fi
        ;;
    3) 
        echo "GAME OVER: KILLED IN ACTION"
        ;;
    *)
        echo "Invalid option."
        ;;
esac
```

### System Monitoring

Develop a script that displays important system information such as CPU usage, memory usage, and connected hardware. Make this readable in markdown.

```bash
### System Monitoring

###Develop a script that displays important system information such as CPU usage, memory usage, and connected hardware. Make this readable in markdown.

mem_total=$(free -h | awk '/Mem:/ {print $2}')
mem_free=$(free -h | awk '/Mem:/ {print $3}')
mem_used=$(free -h | awk '/Mem:/ {print $4}')
mem_available=$(free -h | awk '/Mem:/ {print $6}')


cpu_1=$(uptime | awk '{print $10}' | tr -d ',')
cpu_5=$(uptime | awk '{print $11}' | tr -d ',')
cpu_10=$(uptime | awk '{print $12}' | tr -d ',')



echo "          RAM               "
echo "| Total | Used | Available |"
echo "|  ---  | ---  |    ---    |"
echo "|  $mem_total |  $mem_used |  $mem_available |"

echo ""
echo "         CPU                "
echo "| 1 min | 5 min | 15 min |"
echo "|  ---  |  ---  |  ---   |"
echo "|  $cpu_1 |  $cpu_5 |  $cpu_10  |"

echo " "
echo "         Connected Hardware                "
echo "| --- |"

lsusb | cut -d' ' -f7- | awk '{print "| " $0 " |"}'
echo "| Connected PCI Devices |"
echo "| --- |"
lspci | cut -d':' -f3- | sed 's/^[ \t]*//' | awk '{print "| " $0 " |"}'
```
