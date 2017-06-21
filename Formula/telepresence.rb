# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  desc "Local development environment attached to a remote Kubernetes cluster"
  homepage "http://telepresence.io"
  url "https://github.com/datawire/telepresence/archive/0.52.tar.gz"
  sha256 "48782fe4bba4e899108dccc708ce1625ea43de29ed78d08948c68c1869145a7f"

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
