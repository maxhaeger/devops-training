#!/bin/bash

echo "Willkommen im Dschungelabenteuer!"
echo "Du stehst vor einem Pfad im Dschungel. Welchen Weg wirst du wählen?"
echo "1) Den dunklen Waldweg"
echo "2) Den sonnigen Flusspfad"

read -p "Deine Wahl (1 oder 2): " choice

case $choice in
    1)
        echo "Du betrittst den dunklen Waldweg."
        sleep 2
        echo "Plötzlich hörst du seltsame Geräusche um dich herum."
        sleep 2
        echo "Du triffst auf einen freundlichen Affen, der dir den richtigen Weg zeigt."
        ;;
    2)
        echo "Du gehst entlang des sonnigen Flusspfads."
        sleep 2
        echo "Ein wildes Krokodil taucht aus dem Wasser auf und bedroht dich!"

        read -t 5 -p "Schnell, welchen Gegenstand wirst du verwenden, um dich zu verteidigen? (a für Stock, b für Taschenlampe): " weapon

        if [ -z "$weapon" ]; then
            echo ""
            echo "Das Krokodil wird ungeduldig und greift dich an. Du warst ein einfacher Snack für das Krokodil..."
        else
            if [ "$weapon" = "a" ]; then
                wahrscheinlichkeit_angriff=$((RANDOM % 2))

                if [ "$wahrscheinlichkeit_angriff" -eq 0 ]; then
                    echo "Du schlägst das Krokodil mit dem Stock, aber es kontert und greift dich an. Das wars für dich..."
                else
                    echo "Du schlägst das Krokodil mit dem Stock und entkommst unverletzt."
                fi
            else
                echo "Die Taschenlampe vertreibt das Krokodil mit hellem Licht. Du entkommst knapp."
            fi
        fi
        ;;
    *)
        echo "Ungültige Eingabe. Du zögerst zu lange und verlierst dich im Dschungel."
        ;;
esac