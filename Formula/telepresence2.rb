# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence2 < Formula
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://app.getambassador.io/download/tel2/darwin/amd64/2.2.2/telepresence"
  sha256 "966e32c24fab7ac83c033115eeca583e2360e0d0e88683f05c46d25738349192"

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
