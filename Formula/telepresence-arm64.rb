# This script is generated automatically by the release automation code in the
# Telepresence repository:
class TelepresenceArm64 < Formula
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://app.getambassador.io/download/tel2/darwin/arm64/2.9.1/telepresence"
  sha256 "6b87d467e11633c359999e76b6d816388794771f3602e5862665c3098f650bd8"

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
