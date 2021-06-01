# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence2 < Formula
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://app.getambassador.io/download/tel2/darwin/amd64/2.3.0/telepresence"
  sha256 "bc377124d80a9434d02fb6b6aa49ff1de2c6d5eb8b0c37f30feca00f90528b61"

  # macfuse is a cask and formula can't depend on casks, so we can't actually
  # do this. This is probably fine since you don't _need_ macfuse to run
  # the cli, just to do mounts 
  #depends_on "macfuse"

  def install
    bin.install "telepresence"
  end

  test do
    system "#{bin}/telepresence", "--help"
  end
end
