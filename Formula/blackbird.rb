# This script is generated automatically by the release automation code in the
# Blackbird CLI repository:
class Blackbird < Formula
  desc "Ambassador Blackbird is an API management and development tool that supercharges your ability to develop, test, mock, and deploy API services."
  homepage "https://www.getambassador.io/products/blackbird/api-development"
  version "1.13.5"

  BASE_URL = "https://blackbird.a8r.io/api/download/cli"
  ARCH = Hardware::CPU.arm? ? "arm64" : "amd64"
  OPERATING_SYSTEM = OS.mac? ? "darwin" : "linux"
  PACKAGE_NAME = "releases.datawire.io"

  url "#{BASE_URL}/v#{version}/#{OPERATING_SYSTEM}/#{ARCH}"

  sha256 "bdb2d10a4892aa5cd41f9f5edb9de5ecd3734a8392dfa8dce989ff35fd85079d" if OS.mac? && Hardware::CPU.intel?
  sha256 "cac34ca0995e5f4dd2ca5d59a3143e4008871fc90afd8c0d4d1cfb6bc7ff848b" if OS.mac? && Hardware::CPU.arm?
  sha256 "82dbaac349b459f0711d267a3a27dd20f340a11421be5f84881034cb8e7f1627" if OS.linux? && Hardware::CPU.intel?
  sha256 "429a87e800236d7c0cd50df89b1adfd78faeb4f5296261321c031a367500f3b3" if OS.linux? && Hardware::CPU.arm?

  def install
      bin.install "#{PACKAGE_NAME}" => "blackbird"
  end

  test do
      system "#{bin}/blackbird", "--help"
  end
end
