# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  desc "Local development environment attached to a remote Kubernetes cluster"
  homepage "http://telepresence.io"
  url "https://github.com/datawire/telepresence/archive/0.63.tar.gz"
  sha256 "5bbef978642aa5d147d7cf45768c4bab656261afac58ad99e1f74a3b37f8bc86"

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
