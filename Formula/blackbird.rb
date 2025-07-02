# This script is generated automatically by the release automation code in the
# Blackbird CLI repository:
class Blackbird < Formula
  desc "Ambassador Blackbird is an API management and development tool that supercharges your ability to develop, test, mock, and deploy API services."
  homepage "https://www.getambassador.io/products/blackbird/api-development"
  version "1.14.2"

  BASE_URL = "https://blackbird.a8r.io/api/download/cli"
  ARCH = Hardware::CPU.arm? ? "arm64" : "amd64"
  OPERATING_SYSTEM = OS.mac? ? "darwin" : "linux"
  PACKAGE_NAME = "releases.datawire.io"

  url "#{BASE_URL}/v#{version}/#{OPERATING_SYSTEM}/#{ARCH}"

  sha256 "3410c79a1f7e18d41f51b62a2bd08e1e591522caeeb6c5f1a555944cf9fe7428" if OS.mac? && Hardware::CPU.intel?
  sha256 "3c0ccfccac3212ca5e15a4cf3fcfe977b54b01fb3266d63896b73be52bba0226" if OS.mac? && Hardware::CPU.arm?
  sha256 "b84153521bb0e3b6d367793653ad3108ed3c99b424f6d19d19959456a8e0e0f9" if OS.linux? && Hardware::CPU.intel?
  sha256 "407d11a753f2a5e8a94e39428511212373c52fc8bdad24888246d6246387bf3d" if OS.linux? && Hardware::CPU.arm?

  def install
      bin.install "#{PACKAGE_NAME}" => "blackbird"
  end

  test do
      system "#{bin}/blackbird", "--help"
  end
end
