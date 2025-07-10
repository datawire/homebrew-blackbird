# This script is generated automatically by the release automation code in the
# Blackbird CLI repository:
class Blackbird < Formula
  desc "Ambassador Blackbird is an API management and development tool that supercharges your ability to develop, test, mock, and deploy API services."
  homepage "https://www.getambassador.io/products/blackbird/api-development"
  version "1.14.3"

  BASE_URL = "https://blackbird.a8r.io/api/download/cli"
  ARCH = Hardware::CPU.arm? ? "arm64" : "amd64"
  OPERATING_SYSTEM = OS.mac? ? "darwin" : "linux"
  PACKAGE_NAME = "releases.datawire.io"

  url "#{BASE_URL}/v#{version}/#{OPERATING_SYSTEM}/#{ARCH}"

  sha256 "6fb6d6363f37fb442bb61b7302f889ee9cbc1af84faa5c7189e27fb9a0dd8db6" if OS.mac? && Hardware::CPU.intel?
  sha256 "eba567b08a8e5f3321749f513583c0f767ddd194ed42fa0f30560761c8066de7" if OS.mac? && Hardware::CPU.arm?
  sha256 "e502e831e5ff6f835e414858dbbedc490da0fe92a8644b0f460cc43cbbff9ef4" if OS.linux? && Hardware::CPU.intel?
  sha256 "777d16fec2666dc3b297e2daf9e91d2d1acd8acdfa0e2f25090cb24886f4b744" if OS.linux? && Hardware::CPU.arm?

  def install
      bin.install "#{PACKAGE_NAME}" => "blackbird"
  end

  test do
      system "#{bin}/blackbird", "--help"
  end
end
