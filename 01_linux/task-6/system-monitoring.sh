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