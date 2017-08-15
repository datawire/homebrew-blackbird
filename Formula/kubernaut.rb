# This script is generated automatically by the release automation code in the
# Kubernaut repository:
class Kubernaut < Formula
  desc "On-demand, ephemeral Kubernetes clusters for development and testing"
  homepage "https://github.com/datawire/kubernaut"
  url "https://github.com/datawire/kubernaut/archive/0.1.4.tar.gz"
  sha256 "58f5b1ee61317ea39d0b380eec6727b58e59f21efdee2dcdbcaa09be6380ecb8"

  depends_on "python3"

  def install
    bin.install "out/kubernaut"
  end

  test do
    system "kubernaut", "--help"
  end
end