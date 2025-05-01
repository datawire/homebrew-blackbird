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

  sha256 "4eb340f31d4a03b97fe319cd9f22b31bd5fad1603bd582534bfd39cb3ca50d73" if OS.mac? && Hardware::CPU.intel?
  sha256 "9edb89aa8cd31e07b2744212e335ca1bf1b926865c42713536378977d9469ba3" if OS.mac? && Hardware::CPU.arm?
  sha256 "9991358dd32fc7718d0a6d3aaffd790f30810f4331077858c6f547237e0a3705" if OS.linux? && Hardware::CPU.intel?
  sha256 "20df8c5afa960639ea789b457de332a74ca69814406c8e2ed15759dd5f76bef7" if OS.linux? && Hardware::CPU.arm?

  def install
      bin.install "#{PACKAGE_NAME}" => "blackbird"
  end

  test do
      system "#{bin}/blackbird", "--help"
  end
end
