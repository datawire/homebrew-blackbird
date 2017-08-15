# This script is generated automatically by the release automation code in the
# Kubernaut repository:
class Kubernaut < Formula
  desc "On-demand, ephemeral Kubernetes clusters for development and testing"
  homepage "https://github.com/datawire/kubernaut"
  url "https://github.com/datawire/kubernaut/archive/0.1.3.tar.gz"
  sha256 "0f09acb268aee0f3400f34c3f80804f632b0b4558686e17bd4f6848ebbae59e6"

  depends_on "python3"

  def install
    bin.install "out/kubernaut"
  end

  test do
    system "kubernaut", "--help"
  end
end