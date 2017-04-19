# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  desc "Local development environment attached to a remote Kubernetes cluster"
  homepage "http://telepresence.io"
  url "https://github.com/datawire/telepresence/archive/0.30.tar.gz"
  sha256 "eae959ee0fa98dfe7d120cccf1efb292cebb80f8a6b7386d5941d7dbddabd9da"

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
