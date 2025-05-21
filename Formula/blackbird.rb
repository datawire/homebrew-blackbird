# This script is generated automatically by the release automation code in the
# Blackbird CLI repository:
class Blackbird < Formula
  desc "Ambassador Blackbird is an API management and development tool that supercharges your ability to develop, test, mock, and deploy API services."
  homepage "https://www.getambassador.io/products/blackbird/api-development"
  version "1.13.1"

  BASE_URL = "https://blackbird.a8r.io/api/download/cli"
  ARCH = Hardware::CPU.arm? ? "arm64" : "amd64"
  OPERATING_SYSTEM = OS.mac? ? "darwin" : "linux"
  PACKAGE_NAME = "releases.datawire.io"

  url "#{BASE_URL}/v#{version}/#{OPERATING_SYSTEM}/#{ARCH}"

  sha256 "c029146911a05d528840aea8e1010ec7b777a043c81881a346b5bbd549d7f372" if OS.mac? && Hardware::CPU.intel?
  sha256 "46ac51b717d332897a82f27e4a67f3000fe34b6cbce8104fdfef1c678c5f2aee" if OS.mac? && Hardware::CPU.arm?
  sha256 "eb3e9254008bc03832643b62aadd1cb791bd943e9da0c09b25027fc07bd1ed25" if OS.linux? && Hardware::CPU.intel?
  sha256 "e190a6290ab683ddbf1329effc0da5333b80e08f0acf24c7503dc15ddb8e3f62" if OS.linux? && Hardware::CPU.arm?

  def install
      bin.install "#{PACKAGE_NAME}" => "blackbird"
  end

  test do
      system "#{bin}/blackbird", "--help"
  end
end
