# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://app.getambassador.io/download/tel2/darwin/amd64/2.5.6/telepresence"
  sha256 "daae78824da04c4e53b8cf917a7256cad6cd9d92bd2e5d7d860a5f70f9a6b39b"

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
