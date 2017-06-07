# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  desc "Local development environment attached to a remote Kubernetes cluster"
  homepage "http://telepresence.io"
  url "https://github.com/datawire/telepresence/archive/0.49.tar.gz"
  sha256 "dcf92beae8b6f5a7d8907998ff7c988b1c60f4abf1ba62acf0daee68dd6d2331"

  depends_on "python3"
  depends_on "torsocks"
  depends_on "sshfs"

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
