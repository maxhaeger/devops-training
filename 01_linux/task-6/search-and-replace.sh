echo "Type word which should be searched and replaced"
read search
echo "Now type word which which it should be replaced"
read replace
echo "Now path to file"
read path
sed -i "s/$search/$replace/gI" "$path"
