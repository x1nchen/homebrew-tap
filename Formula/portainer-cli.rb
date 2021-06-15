class PortainerCli < Formula
  desc "command line tool for portainer"
  homepage "https://github.com/x1nchen/portainer-cli"
  url "https://github.com/x1nchen/portainer-cli/releases/download/v0.0.18/portainer-cli_0.0.18_darwin_amd64.tar.gz"
  version "0.0.18"
  sha256 "5c7c354bbc234f788e9788373be7e922eb6f74a1ef0d256bbbb1b1143fbbf13a"

  def install
    bin.install "portainer-cli"
  end
end