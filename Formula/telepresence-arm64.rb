# This script is generated automatically by the release automation code in the
# Telepresence repository:
class TelepresenceArm64 < Formula
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://app.getambassador.io/download/tel2/darwin/arm64/2.19.5/telepresence"
  sha256 "d8d3514f3fce787b4f0bf1a9a55a0894dc6998a083f708691b46987eafba9020"

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
