#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -euo pipefail

wget -O "/etc/yum.repos.d/_copr_kylegospo-system76-scheduler.repo" "https://copr.fedorainfracloud.org/coprs/kylegospo/system76-scheduler/repo/fedora-${OS_VERSION}/kylegospo-system76-scheduler-fedora-${OS_VERSION}.repo"

rpm-ostree install system76-scheduler

systemctl enable --now com.system76.Scheduler.service

rm -f /etc/yum.repos.d/_copr_kylegospo-system76-scheduler.repo
