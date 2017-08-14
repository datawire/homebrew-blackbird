# This script is generated automatically by the release automation code in the
# Kubernaut repository:
class Kubernaut < Formula
  desc "Local development environment attached to a remote Kubernetes cluster"
  homepage "https://github.com/datawire/kubernaut"
  url "https://github.com/datawire/kubernaut/archive/.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  depends_on "python3"

  def install
    bin.install "cli/telepresence"
  end

  test do
    system "telepresence", "--help"
  end
end