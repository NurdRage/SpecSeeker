#!/bin/bash
echo "=== Virtualization Support Information ==="
sysctl -a | grep -E 'machdep.cpu.features|VMX|SVM'
