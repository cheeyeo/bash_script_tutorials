# Simple function to get system status
#!/bin/bash

print_system_status() {
  date
  echo "CPU In use: $(top -bn1 | grep Cpu | awk '{print $2}')"
  echo "Memory in use: $(free -h | grep Mem | awk '{print $3}')"
  echo "Disk available on /: $(df -k / | grep / | awk '{print $4}')"
  echo
}

for((i=0; i<5; i++)); do
	print_system_status
	sleep 5
done