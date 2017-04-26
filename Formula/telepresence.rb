# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  desc "Local development environment attached to a remote Kubernetes cluster"
  homepage "http://telepresence.io"
  url "https://github.com/datawire/telepresence/archive/0.41.tar.gz"
  sha256 "78055d9da5471abee96ceff84c738fb95e80b0b91de437b37aa07feac42e9a7e"

  depends_on "python3"
  depends_on "torsocks"
  depends_on "sshfs"

  def install
    bin.install "cli/telepresence"
  end

  test do
    system "telepresence", "--help"
  end
end
