#!/usr/bin/env bash
set -eux

if [ -n "$1" ]; then
    if grep -q "v" <<<$1; then
        echo "version number should not be leading with v, please use the format like 0.0.xxx"
        exit 1
    fi
else
    echo "error: need version to upgrade, example: ./upgrade.sh 0.0.22"
    exit 1
fi

version=$1
echo "upgrade version ${version}"

checksum_file=$(curl -L https://github.com/x1nchen/portainer-cli/releases/download/v${version}/portainer-cli_checksums.txt)

checksum=$(awk '{print $5}' <<<\"${checksum_file}\")
echo "${checksum}"

cat <<EOF >./Formula/portainer-cli.rb
class PortainerCli < Formula
  desc "command line tool for portainer"
  homepage "https://github.com/x1nchen/portainer-cli"
  url "https://github.com/x1nchen/portainer-cli/releases/download/v${version}/portainer-cli_0.0.22_darwin_amd64.tar.gz"
  version "${version}"
  sha256 "${checksum}"
  def install
    bin.install "portainer-cli"
  end
end
EOF
