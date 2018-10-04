# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  include Language::Python::Virtualenv
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://s3.amazonaws.com/datawire-static-files/telepresence/telepresence-0.93.tar.gz"
  sha256 "d5fdc0e38bf48135db003aeb88e486ebd2f85d31b7a42a31de5f1691449db4c1"

  depends_on "python"
  depends_on "torsocks"
  depends_on "sshfs"

  def install
    bin.install "telepresence"
    bin.install "sshuttle-telepresence"
  end

  def caveats
    <<~EOS
      Use of the container method requires socat.
        brew install socat
    EOS
  end

  test do
    system "#{bin}/telepresence", "--help"
    system "#{bin}/sshuttle-telepresence", "--version"
  end
end
