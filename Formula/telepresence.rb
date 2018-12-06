# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  include Language::Python::Virtualenv
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://s3.amazonaws.com/datawire-static-files/telepresence/telepresence-0.95.tar.gz"
  sha256 "619286709e174c8e6a7afb2627eb7639a3246bc1603d20217edb6f06bb22efd7"

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
