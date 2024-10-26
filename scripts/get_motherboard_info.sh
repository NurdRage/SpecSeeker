#!/bin/bash
echo "=== Motherboard Information ==="
system_profiler SPHardwareDataType | grep "Model Identifier"
system_profiler SPHardwareDataType | grep "Boot ROM Version"
