# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  include Language::Python::Virtualenv
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://s3.amazonaws.com/datawire-static-files/telepresence/telepresence-0.98.tar.gz"
  sha256 "f8511e35a82924868ef10b2013cb6aa5bb88f5e0bf1964dd0739e13aa1ab667c"

  depends_on "python"
  depends_on "torsocks"
  depends_on "sshfs"

  def install
    bin.install "bin/telepresence"
    libexec.install Dir["libexec/*"]
  end

  test do
    system "#{bin}/telepresence", "--help"
  end
end
