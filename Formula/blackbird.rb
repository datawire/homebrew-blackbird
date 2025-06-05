# This script is generated automatically by the release automation code in the
# Blackbird CLI repository:
class Blackbird < Formula
  desc "Ambassador Blackbird is an API management and development tool that supercharges your ability to develop, test, mock, and deploy API services."
  homepage "https://www.getambassador.io/products/blackbird/api-development"
  version "1.13.4"

  BASE_URL = "https://blackbird.a8r.io/api/download/cli"
  ARCH = Hardware::CPU.arm? ? "arm64" : "amd64"
  OPERATING_SYSTEM = OS.mac? ? "darwin" : "linux"
  PACKAGE_NAME = "releases.datawire.io"

  url "#{BASE_URL}/v#{version}/#{OPERATING_SYSTEM}/#{ARCH}"

  sha256 "a7081eb24880ca4656f6e53587537e7d787477ffcbfe27f47aa2262a10d74225" if OS.mac? && Hardware::CPU.intel?
  sha256 "3499d26ff3a936e499c40b5c8d30cd638815258e1794f811465ce353f9a502de" if OS.mac? && Hardware::CPU.arm?
  sha256 "2225aee7cf284d4802f2b06420edee2253f264b00c7af5edd6a4654b5fc283c6" if OS.linux? && Hardware::CPU.intel?
  sha256 "bc4b86832f6544189e53ffcce91b5c05096e05e0deee9e0bff0416acdf695fcf" if OS.linux? && Hardware::CPU.arm?

  def install
      bin.install "#{PACKAGE_NAME}" => "blackbird"
  end

  test do
      system "#{bin}/blackbird", "--help"
  end
end
