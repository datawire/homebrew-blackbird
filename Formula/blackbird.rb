# This script is generated automatically by the release automation code in the
# Blackbird CLI repository:
class Blackbird < Formula
  desc "Ambassador Blackbird is an API management and development tool that supercharges your ability to develop, test, mock, and deploy API services."
  homepage "https://www.getambassador.io/products/blackbird/api-development"
  version "1.13.0"

  BASE_URL = "https://blackbird.a8r.io/api/download/cli"
  ARCH = Hardware::CPU.arm? ? "arm64" : "amd64"
  OPERATING_SYSTEM = OS.mac? ? "darwin" : "linux"
  PACKAGE_NAME = "releases.datawire.io"

  url "#{BASE_URL}/v#{version}/#{OPERATING_SYSTEM}/#{ARCH}"

  sha256 "9bf7855b5cbf956621e3f22a2d9c35282e4e1423916a30493f796f31bd14399d" if OS.mac? && Hardware::CPU.intel?
  sha256 "13e8a55f611a2f56f9e2386a42fa8c68eb45b81f27104c0c6e886e90f403c100" if OS.mac? && Hardware::CPU.arm?
  sha256 "fbdb3a98369b17800e2a1f67cba307e5c0a2d3d0d6a8b7c12976840f433690d6" if OS.linux? && Hardware::CPU.intel?
  sha256 "f1ae9ebc484d8d84d1004e8da03348c75fa3f7543208bfb56bf18b2f48812be2" if OS.linux? && Hardware::CPU.arm?

  def install
      bin.install "#{PACKAGE_NAME}" => "blackbird"
  end

  test do
      system "#{bin}/blackbird", "--help"
  end
end
