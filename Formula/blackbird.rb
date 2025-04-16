# This script is generated automatically by the release automation code in the
# Blackbird CLI repository:
class Blackbird < Formula
  desc "Ambassador Blackbird is an API management and development tool that supercharges your ability to develop, test, mock, and deploy API services."
  homepage "https://www.getambassador.io/products/blackbird/api-development"
  version "1.12.2"

  BASE_URL = "https://blackbird.a8r.io/api/download/cli"
  ARCH = Hardware::CPU.arm? ? "arm64" : "amd64"
  OPERATING_SYSTEM = OS.mac? ? "darwin" : "linux"
  PACKAGE_NAME = "releases.datawire.io"

  url "#{BASE_URL}/v#{version}/#{OPERATING_SYSTEM}/#{ARCH}"

  sha256 "eed1558254ae313fa8e07bedde0c57ed193fcecdd2c16da7472413a4343093d1" if OS.mac? && Hardware::CPU.intel?
  sha256 "746ab8e5ac1427943fc133049af3a5c18f5eb41159295c467a62ee4a2d1da310" if OS.mac? && Hardware::CPU.arm?
  sha256 "c7e249832438774b1981dbc8f8bee03c75e79444a2420369e20055a3028d3fa1" if OS.linux? && Hardware::CPU.intel?
  sha256 "a0c90765b521425c0bb40ac8094f0cde8c34ad162e57fb5f88ed6255236ebe58" if OS.linux? && Hardware::CPU.arm?

  def install
      bin.install "#{PACKAGE_NAME}" => "blackbird"
  end

  test do
      system "#{bin}/blackbird", "--help"
  end
end
