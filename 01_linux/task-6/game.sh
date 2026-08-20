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