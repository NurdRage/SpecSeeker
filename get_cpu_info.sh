#!/bin/bash
echo "=== Processor Information ==="
sysctl -n machdep.cpu.brand_string
sysctl -n hw.ncpu
sysctl -n hw.physicalcpu
sysctl -n hw.logicalcpu
sysctl -n hw.cpufrequency | awk '{print $1/1000000000 " GHz"}'
system_profiler SPHardwareDataType | grep "L2 Cache"
system_profiler SPHardwareDataType | grep "L3 Cache"
