
# Darwin Failed SSH Login Detector

## Overview

Darwin Failed SSH Login Detector is a Bash script that analyzes Linux authentication logs to identify repeated failed SSH login attempts that may indicate a brute-force attack.

The script counts failed login attempts, displays suspicious login events, and summarizes attacking IP addresses.

---

## Features

- Detects failed SSH login attempts
- Counts failed logins
- Alerts on possible brute-force attacks
- Displays failed login events
- Summarizes source IP addresses
- Uses Bash and grep for log analysis

---

## Technologies Used

- Bash
- Linux Authentication Logs
- grep
- awk
- sort
- uniq

---

## Files

```
failed_ssh_login_detector.sh
linux_auth.log
README.md
```

---

## Sample Output

```
=== Darwin Failed SSH Login Detector ===

Failed SSH Login Attempts: 4

[HIGH ALERT] Possible SSH brute-force attack detected!

=== Failed Login Events ===
Failed password for invalid user admin...
Failed password for invalid user root...

=== Source IP Addresses ===

3 192.168.1.100
1 10.0.0.15
```

---

## Skills Demonstrated

- Bash Scripting
- Linux Security
- SSH Authentication Analysis
- Brute Force Detection
- Log Parsing
- Threat Hunting
- SOC Analyst Fundamentals

---

## Future Improvements

- Detect brute-force attacks by configurable thresholds
- Export reports to CSV
- Highlight repeated attacking IPs
- Email security alerts
- Support multiple log files

---

## Author

Darwin Brown
