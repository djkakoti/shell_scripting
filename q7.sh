#!/bin/bash

USER=$1

echo "User Login Report" > q7_report.txt
echo "-----------------" >> q7_report.txt

echo "Currently Logged In:" >> q7_report.txt
who >> q7_report.txt

echo "Number of Logged-in Users:" >> q7_report.txt
who | wc -l >> q7_report.txt


echo "Last 10 User Logins:" >> q7_report.txt
last -10 >> q7_report.txt

echo "Number of Unique Users:" >> q7_report.txt
last | awk '{print $1}' | sort -u | wc -l >> q7_report.txt

echo "Most Recent Logins:" >> q7_report.txt
last -5 >> q7_report.txt

echo "Report saved in q7_report.txt"
