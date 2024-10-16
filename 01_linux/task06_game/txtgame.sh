#!/bin/bash

# Variables
lives=3
money=0
tea_stock=10
milk_stock=10
honey_stock=10
day=1
order_time_limit=10
order_day_limit=3

# Tea prices for selling
tea_price=2
milk_tea_price=4
honey_tea_price=5
all_inc_tea=8

# Buying prices for ingredients
tea_buying_price=1
milk_buying_price=2
honey_buying_price=3

# Intro
echo "You have 3 lives. If you get an order wrong or take too long, you lose a life."
echo "You start with $tea_stock servings of tea, $milk_stock servings of milk, $honey_stock servings of honey, and $money€."
echo "Each day, the game gets harder. There will be more (complex) orders and less time to prepare."
echo ""

# Function to check if the game is over
check_game_over() {
    if [[ $lives -le 0 ]]; then
        echo "You've run out of lives. Game Over!"
        echo "You lasted for $day days."
        exit 0
    fi
}

# Function to buy stock
buy_stock() {
    while true; do
        echo "You have $money€."
        echo "Available stocks to buy:"
        echo "1. Tea - $tea_buying_price€ each"
        echo "2. Milk - $milk_buying_price€ each"
        echo "3. Honey - $honey_buying_price€ each"
        echo "Enter the number of the item you want to buy or 'q' to quit: "
        read choice

        case $choice in
            1)
                echo "How many servings of tea do you want to buy?"
                read amount
                cost=$((tea_buying_price * amount))
                if [[ $money -ge $cost ]]; then
                    tea_stock=$((tea_stock + amount))
                    money=$((money - cost))
                    echo "You bought $amount servings of tea."
                else
                    echo "Not enough money!"
                fi
                ;;
            2)
                echo "How many servings of milk do you want to buy?"
                read amount
                cost=$((milk_buying_price * amount))
                if [[ $money -ge $cost ]]; then
                    milk_stock=$((milk_stock + amount))
                    money=$((money - cost))
                    echo "You bought $amount servings of milk."
                else
                    echo "Not enough money!"
                fi
                ;;
            3)
                echo "How many servings of honey do you want to buy?"
                read amount
                cost=$((honey_buying_price * amount))
                if [[ $money -ge $cost ]]; then
                    honey_stock=$((honey_stock + amount))
                    money=$((money - cost))
                    echo "You bought $amount servings of honey."
                else
                    echo "Not enough money!"
                fi
                ;;
            q)
                echo "Exiting stock purchase menu."
                break
                ;;
            *)
                echo "Invalid choice!"
                ;;
        esac

        echo "Remaining money: $money€"
        echo "Stock - Tea: $tea_stock, Milk: $milk_stock, Honey: $honey_stock"
        echo ""
    done
}

# Function to convert menu numbers to tea descriptions
get_tea_name() {
    case $1 in
        1) echo "plain tea";;
        2) echo "tea with milk";;
        3) echo "tea with honey";;
        4) echo "tea with milk and honey";;
        *) echo "unknown order";;
    esac
}

# Function to parse and serve multiple orders
serve_orders() {
    local orders=$1
    IFS=',' read -ra tea_orders <<< "$orders"  # Split orders by comma

    for order in "${tea_orders[@]}"; do
        serve_tea "$order"
        check_game_over
        echo ""  # Add empty line after serving an order
    done
}

# Function to serve a single tea order
serve_tea() {
    local order=$1
    local reward=0

    case $order in
        1)
            if [[ $tea_stock -gt 0 ]]; then
                tea_stock=$((tea_stock - 1))
                reward=$tea_price
                echo "Right order served! Earned $reward€"
            else
                echo "Not enough tea stock! You lose a life."
                lives=$((lives - 1))
            fi
            ;;
        2)
            if [[ $tea_stock -gt 0 && $milk_stock -gt 0 ]]; then
                tea_stock=$((tea_stock - 1))
                milk_stock=$((milk_stock - 1))
                reward=$milk_tea_price
                echo "Right order served! Earned $reward€"
            else
                echo "Not enough stock for tea with milk! You lose a life."
                lives=$((lives - 1))
            fi
            ;;
        3)
            if [[ $tea_stock -gt 0 && $honey_stock -gt 0 ]]; then
                tea_stock=$((tea_stock - 1))
                honey_stock=$((honey_stock - 1))
                reward=$honey_tea_price
                echo "Right order served! Earned $reward€"
            else
                echo "Not enough stock for tea with honey! You lose a life."
                lives=$((lives - 1))
            fi
            ;;
        4)
            if [[ $tea_stock -gt 0 && $milk_stock -gt 0 && $honey_stock -gt 0 ]]; then
                tea_stock=$((tea_stock - 1))
                milk_stock=$((milk_stock - 1))
                honey_stock=$((honey_stock - 1))
                reward=$all_inc_tea
                echo "Right order served! Earned $reward€"
            else
                echo "Not enough stock for tea with milk and honey! You lose a life."
                lives=$((lives - 1))
            fi
            ;;
        *)
            echo "Invalid choice! You lose a life."
            lives=$((lives - 1))
            ;;
    esac

    if [[ $reward -gt 0 ]]; then
        money=$((money + reward))
    fi
}

# Main game loop for days
while [[ $lives -gt 0 ]]; do
    echo "Day $day begins!"
    echo "Current Stock:"
    echo "Tea: $tea_stock, Milk: $milk_stock, Honey: $honey_stock"
    echo ""
    
    echo "You have $money€. Do you want to buy more stock before starting the day? (yes / no)"
    read buy_choice
    if [[ "$buy_choice" == "yes" ]]; then
        buy_stock
    fi

    echo "Current Stock:"
    echo "Tea: $tea_stock, Milk: $milk_stock, Honey: $honey_stock"
    echo ""

    # Display menu
    echo "Menu:"
    echo "1 - plain tea"
    echo "2 - tea with milk"
    echo "3 - tea with honey"
    echo "4 - tea with milk and honey"
    echo ""
    echo "DAY STARTS NOW!"

    # Wait between 2 and 5 seconds before starting the first customer
    sleep $((RANDOM % 4 + 2))

    # Serve customers for the day
    for ((customer=1; customer<=order_day_limit; customer++)); do
        # Generate a random order
        num_orders=$((RANDOM % 3 + 1))
        orders=""
        for ((i=1; i<=num_orders; i++)); do
            tea_type=$((RANDOM % 4 + 1))
            orders+="$tea_type"
            if [[ $i -lt $num_orders ]]; then
                orders+=","
            fi
        done

        # Display the order in words
        IFS=',' read -ra order_array <<< "$orders"
        order_display=""
        for order in "${order_array[@]}"; do
            order_name=$(get_tea_name "$order")
            order_display+="$order_name, "
        done
        order_display=${order_display%, }  # Remove trailing comma and space

        echo -n "Customer #$customer arrives! They order: $order_display "
        echo ""

        # Get the player's input
        read -t $order_time_limit player_input

        # Check if the player provided input
        if [[ -z "$player_input" ]]; then
            echo "No input provided! You lose a life."
            lives=$((lives - 1))
            check_game_over
        else
            # Serve the orders based on player input
            serve_orders "$player_input"
        fi

        # Random delay between 0 and 5 seconds before the next customer
        sleep $((RANDOM % 6))
    done

    # End of day message with stock details
    echo "End of Day No. $day. Money: $money€"
    echo "Stock - Tea: $tea_stock, Milk: $milk_stock, Honey: $honey_stock"
    echo ""

    # Day end, update day settings
    day=$((day + 1))
    order_day_limit=$((order_day_limit + 1))  # Increase orders each day
    order_time_limit=$((order_time_limit - 1))  # Decrease time limit each day, minimum is 1
    if [[ $order_time_limit -lt 1 ]]; then
        order_time_limit=1
    fi
done

# End of game
echo "Congratulations! You managed the tea house through Day $((day - 1))."

