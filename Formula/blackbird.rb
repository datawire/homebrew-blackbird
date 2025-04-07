class Blackbird < Formula
  desc "Ambassador Blackbird is an API management and development tool that supercharges your ability to develop, test, mock, and deploy API services."
  homepage "https://www.getambassador.io/products/blackbird/api-development"
  version "1.12.1"

  BASE_URL = "https://blackbird.a8r.io/api/download/cli"
  ARCH = Hardware::CPU.arm? ? "arm64" : "amd64"
  OPERATING_SYSTEM = OS.mac? ? "darwin" : "linux"
  PACKAGE_NAME="releases.datawire.io"

  url "#{BASE_URL}/v#{version}/#{OPERATING_SYSTEM}/#{ARCH}"

  sha256 "7183b5fb4ee64c8288d3d00a14bc46c3e2a4877874abee02f69b8643f6fd8b37" if OS.linux? && Hardware::CPU.intel?
  sha256 "eee5efa3c13dc3f299632d5f5a7e9b6418f1278979d54c1d2449fb369854cad0" if OS.linux? && Hardware::CPU.arm?
  sha256 "05e1a2fd520a4fd093a2d3ad69c104e215cf1653f4cb1bafdb1c85e19e3da256" if OS.mac? && Hardware::CPU.intel?
  sha256 "70c64c7c1cdb2a22e77bd1720ee330bd7bde2b2d360c99723ddcde3dd81b3b62" if OS.mac? && Hardware::CPU.arm?
  
  def install
    bin.install "#{PACKAGE_NAME}" => "blackbird"
  end

  def test
    system "#{bin}/blackbird", "--help"
  end
end

