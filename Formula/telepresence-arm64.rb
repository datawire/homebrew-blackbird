# This script is generated automatically by the release automation code in the
# Telepresence repository:
class TelepresenceArm64 < Formula
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://app.getambassador.io/download/tel2/darwin/arm64/2.13.3/telepresence"
  sha256 "7467c0926588d47e9755371fe76949a6d4a90f23f97d690fdb06c0b1c6096f5a"

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
