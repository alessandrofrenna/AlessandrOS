#!/usr/bin/env bash
# Tell build process to exit if there are any errors.
set -euo pipefail

wget -O "/etc/yum.repos.d/_copr_gnome-mutter-patched.repo" "https://copr.fedorainfracloud.org/coprs/trixieua/mutter-patched/repo/fedora-${OS_VERSION}/trixieua-mutter-patched-fedora-${OS_VERSION}.repo"

rpm-ostree override replace --experimental --from repo=copr:copr.fedorainfracloud.org:trixieua:mutter-patched gnome-shell mutter mutter-common xorg-x11-server-Xwayland gdm

rm -f /etc/yum.repos.d/_copr_gnome-mutter-patched.repo
