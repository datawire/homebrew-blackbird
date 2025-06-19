# This script is generated automatically by the release automation code in the
# Blackbird CLI repository:
class Blackbird < Formula
  desc "Ambassador Blackbird is an API management and development tool that supercharges your ability to develop, test, mock, and deploy API services."
  homepage "https://www.getambassador.io/products/blackbird/api-development"
  version "1.14.0"

  BASE_URL = "https://blackbird.a8r.io/api/download/cli"
  ARCH = Hardware::CPU.arm? ? "arm64" : "amd64"
  OPERATING_SYSTEM = OS.mac? ? "darwin" : "linux"
  PACKAGE_NAME = "releases.datawire.io"

  url "#{BASE_URL}/v#{version}/#{OPERATING_SYSTEM}/#{ARCH}"

  sha256 "0a9715009d3d834fa79aae51ce1b0d6b41d7f241fc0a6619013269521f4b1f57" if OS.mac? && Hardware::CPU.intel?
  sha256 "46889ecd729122ad324bc5a59797c03506220dcd40675db8e35481899607e303" if OS.mac? && Hardware::CPU.arm?
  sha256 "bd7bf2919016e6bbacfcba2e2d759904bbaef68db242542f63c9e97bfdd218ea" if OS.linux? && Hardware::CPU.intel?
  sha256 "ad3adf9e38ec85713f6845640dcb9a32b176e13751bf058263e42cbfa5c115ea" if OS.linux? && Hardware::CPU.arm?

  def install
      bin.install "#{PACKAGE_NAME}" => "blackbird"
  end

  test do
      system "#{bin}/blackbird", "--help"
  end
end
