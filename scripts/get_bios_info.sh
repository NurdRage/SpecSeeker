#!/bin/bash
echo "=== BIOS/UEFI Information ==="
system_profiler SPHardwareDataType | grep "Boot ROM Version"
