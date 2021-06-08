class PortainerCli < Formula
  desc "command line tool for portainer"
  homepage "https://github.com/x1nchen/portainer-cli"
  url "https://github.com/x1nchen/portainer-cli/releases/download/v0.0.16/portainer-cli_0.0.16_darwin_amd64.tar.gz"
  version "0.0.16"
  sha256 "eb0d2ce4a692a586cfa343d52aba25b232a2d8f02365703abad50089f24da6e2"

  def install
    bin.install "portainer-cli"
  end
end