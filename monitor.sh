#!/bin/bash
echo "--------------------------------"
echo "Server Report: $(date)"
echo "--------------------------------"
echo "DISK USAGE:"
df -h | grep '^/dev'
echo ""
echo "MEMORY USAGE:"
free -h
echo "--------------------------------"
echo "Status: ONLINE"