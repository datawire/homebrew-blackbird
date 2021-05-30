# This script is generated automatically by the release automation code in the
# Telepresence repository:
class TelepresenceLegacy < Formula
  include Language::Python::Virtualenv
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://s3.amazonaws.com/datawire-static-files/telepresence/telepresence-0.109.tar.gz"
  sha256 "d9e12d72db3cd79f502ea7b174852bfd719f3cade90f41a8d8fc731d1b6f3387"

  depends_on "python"
  depends_on "torsocks"
  depends_on "gromgit/fuse/sshfs-mac"

  def install
    bin.install "bin/telepresence"
    libexec.install Dir["libexec/*"]
  end

  test do
    system "#{bin}/telepresence", "--help"
  end
end
