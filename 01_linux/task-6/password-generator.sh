#!/bin/bash

echo "Welcome to the password generator."
sleep 1
echo "How long should your password be?"
read length
sleep 1
echo "Should special charachters be used? (y/n)"
read charachters

# Definišemo osnovni skup (slova i brojevi)
charset='A-Za-z0-9'

# Ako je korisnik uneo "y" ili "yes", dodajemo i specijalne karaktere
if [ "$charachters" = "y" ] || [ "$charachters" = "yes" ]; then
    charset='A-Za-z0-9!@#$%^&*()'
fi

# Generisanje lozinke sa definisanim charset-om
password=$(openssl rand -base64 100 | tr -dc "$charset" | head -c "$length")

echo "Your generated password is:"
echo "$password"