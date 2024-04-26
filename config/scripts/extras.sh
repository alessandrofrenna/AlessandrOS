#!/usr/bin/env bash
rpm-ostree uninstall htop || true
rpm-ostree uninstall yelp|| true
rpm-ostree uninstall gnome-extensions-app || true

# Tell build process to exit if there are any errors.
set -oue pipefail
# Make zram script executable
echo "Makin minimum-free-zram executable"
chmod +x /usr/bin/minimum-free-zram