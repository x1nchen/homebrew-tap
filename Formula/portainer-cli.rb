class PortainerCli < Formula
  desc "command line tool for portainer"
  homepage "https://github.com/x1nchen/portainer-cli"
  url "https://github.com/x1nchen/portainer-cli/releases/download/v0.0.22/portainer-cli_0.0.22_darwin_amd64.tar.gz"
  version "0.0.22"
  sha256 "cd2fc466056e8a026e7f761a8ffd4c310b2bdf367315e654efc0e2feb765c3e0"
  def install
    bin.install "portainer-cli"
  end
end
