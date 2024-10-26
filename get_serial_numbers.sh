#!/bin/bash
echo "=== Serial Numbers and Identifiers ==="
system_profiler SPHardwareDataType | grep "Serial Number"
