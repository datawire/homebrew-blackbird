# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://github.com/datawire/telepresence/archive/0.70.tar.gz"
  sha256 "24ff8e36405c8d36e4d414879d18591313530e790f32d2b41d8be804420766ee"

  depends_on "python3"
  depends_on "torsocks" => :run
  depends_on "sshfs" => :run

  def install
    system "python3", "-m", "venv", "virtualenv"
    system "virtualenv/bin/python", "-m", "pip", "install", "pex"
    system "bash", "-c", "source virtualenv/bin/activate && packaging/build-sshuttle.py"
    bin.install "cli/telepresence"
    bin.install "cli/stamp-telepresence"
    bin.install "virtualenv/bin/sshuttle-telepresence"
  end

  def caveats; <<-EOS.undent
    Use of the container method requires socat.
      brew install socat
    EOS
  end

  test do
    system "telepresence", "--help"
    system "stamp-telepresence", "--help"
    system "sshuttle-telepresence", "--version"
  end
end
