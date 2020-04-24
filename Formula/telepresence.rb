# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  include Language::Python::Virtualenv
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://s3.amazonaws.com/datawire-static-files/telepresence/telepresence-0.105.tar.gz"
  sha256 "a2ae3278270b7d59ae72ad20282c77a8f6a35142c400be87d1dab2220b7278a7"

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
