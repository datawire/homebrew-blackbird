# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  desc "Local development environment attached to a remote Kubernetes cluster"
  homepage "http://telepresence.io"
  url "https://github.com/datawire/telepresence/archive/0.28.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  depends_on "python3"
  depends_on "torsocks"
  depends_on "homebrew/fuse/sshfs"

  def install
    bin.install "cli/telepresence"
  end

  test do
    system "telepresence", "--help"
  end
end
