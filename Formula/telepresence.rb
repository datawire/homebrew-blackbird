# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  desc "Local development environment attached to a remote Kubernetes cluster"
  homepage "http://telepresence.io"
  url "https://github.com/datawire/telepresence/archive/0.40.tar.gz"
  sha256 "61f350c8b8b3f2166f00a3c22adaef49bd7101f5c16dd0edd76f530149d49fc6"

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
