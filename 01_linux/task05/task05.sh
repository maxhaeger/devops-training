#!/bin/bash

greeting_file="greeting.txt"
input_log="input_log.txt"

# Check if greeting.txt exists and has values

if [[ -f "$greeting_file" ]]; then
	source "$greeting_file"
else
	export greeting="Hello"
	export greeting_txt=""
fi

export MY_NAME="Benedikt"

save_greeting() {
    echo "greeting=\"$greeting\"" > "$greeting_file"
    echo "greeting_txt=\"$greeting_txt\"" >> "$greeting_file"
}

# Function because vars aren't updated automatically apparently
update_output() {
	output="$greeting, $MY_NAME! $greeting_txt"
	confirm="Got it! The new greeting will be: $user_input. Is that correct? Y/N"
}

# Function to avoid redundancies
user_confirm_func() {
	echo $confirm
	read user_confirm
	if [[ $user_confirm == "Y" ]]; then
		if [[ $update_type == "greeting" ]]; then
			export greeting="$user_input"
		elif [[ $update_type == "greeting_txt" ]]; then
			export greeting_txt="$user_input"
		fi
		update_output
		echo "Greeting changed to: $output."
		save_greeting
	else
		echo "Greeting not changed."
	fi
}

log_input() {
	echo "$(date): $user_input_case - $user_input" >> "$input_log"
}

update_output

user_input_question="Do you want to set another greeting or add something to it? (S) - Set (A) - Add (N) - Nothing"

echo $output
echo $user_input_question
read user_input_case

case $user_input_case in
	S | s)
		echo "What should replace $greeting?"
		read user_input
		update_type="greeting"
		update_output
		log_input
		user_confirm_func
		;;	
	A | a)
		echo "What should be added as a greeting text?"
		read user_input
		update_type="greeting_txt"
		update_output
		log_input
		user_confirm_func
		;;
	N | *)
		echo "No changes."
		log_input
		;;
esac
