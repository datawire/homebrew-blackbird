# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  desc "Local development environment attached to a remote Kubernetes cluster"
  homepage "http://telepresence.io"
  url "https://github.com/datawire/telepresence/archive/0.53.tar.gz"
  sha256 "37ff8d35586d0b8b524d66bfb645c688ac026042efd8ad1ce41927e84fb1048f"

  depends_on "python3"
  depends_on "torsocks"
  depends_on "sshfs"
  depends_on "socat"

  def install
    system "env", "PATH=#{ENV['PATH']}:/usr/local/bin", "make", "virtualenv/bin/sshuttle-telepresence"
    bin.install "cli/telepresence"
    bin.install "virtualenv/bin/sshuttle-telepresence"
  end

  test do
    system "telepresence", "--help"
    system "sshuttle-telepresence", "--version"
  end
end
