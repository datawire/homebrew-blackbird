# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://github.com/datawire/telepresence/archive/0.65.tar.gz"
  sha256 "0a439ad1ac55c7d26e8169b0ab9bde35456829eca5854c14f9092c2645442560"

  depends_on "python3"
  depends_on "torsocks" => :run
  depends_on "sshfs" => :run

  def install
    system "env", "PATH=#{ENV["PATH"]}:/usr/local/bin", "make", "virtualenv/bin/sshuttle-telepresence"
    bin.install "cli/telepresence"
    bin.install "virtualenv/bin/sshuttle-telepresence"
  end

  def caveats; <<-EOS.undent
    Use of the container method requires socat.
      brew install socat
    EOS
  end

  test do
    system "telepresence", "--help"
    system "sshuttle-telepresence", "--version"
  end
end
