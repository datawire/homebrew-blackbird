# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  desc "Local development environment attached to a remote Kubernetes cluster"
  homepage "http://telepresence.io"
  url "https://github.com/datawire/telepresence/archive/0.31.tar.gz"
  sha256 "4e5eef97c0bf94e6692d3e9776305f0d3118e5186cff1919b033dd1f649b4c7b"

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
