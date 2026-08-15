#!/bin/bash

set -euo pipefail

apt-get update -y && apt-get upgrade -y

# installing docker
curl -fsSL https://get.docker.com | sh
usermod -aG docker ubuntu
systemctl enable --now docker

# installing gitlab runner
curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | bash
apt-get install -y gitlab-runner
systemctl enable --now gitlab-runner

echo "now register the runner"