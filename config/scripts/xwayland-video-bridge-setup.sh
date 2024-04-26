#!/usr/bin/env bash
# Tell build process to exit if there are any errors.
set -oue pipefail

# Add Flatpak repositories
add_repos() {
    echo "Adding repositories..."
    flatpak remote-add --if-not-exists kdeapps https://distribute.kde.org/flatpak-apps-testing
}

# Install the XWayland Video Bridge
inst_xwvb() {
    echo "Installing XWayland Video Bridge..."
    flatpak install --user --or-update https://cdn.kde.org/flatpak/xwaylandvideobridge-nightly/org.kde.xwaylandvideobridge.flatpakref
}

add_repos

inst_xwvb

# It's done, yay!
echo "XWayland Video Bridge installed successfully. Have fun!"