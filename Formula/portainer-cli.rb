class PortainerCli < Formula
  desc "command line tool for portainer"
  homepage "https://github.com/x1nchen/portainer-cli"
  url "https://github.com/x1nchen/portainer-cli/releases/download/v0.0.17/portainer-cli_0.0.17_darwin_amd64.tar.gz"
  version "0.0.17"
  sha256 "01949b544dcf941ec0d3149ce323107477fa7a829bc0cc0c7db260029268615f"

  def install
    bin.install "portainer-cli"
  end
end