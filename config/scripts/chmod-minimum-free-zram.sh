#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail
# Make zram script executable
echo "Makin minimum-free-zram executable"
chmod +x /usr/bin/minimum-free-zram