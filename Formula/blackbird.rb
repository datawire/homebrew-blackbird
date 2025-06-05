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

  sha256 "f7c58b9f5d54e9117ff5e3a1018950641142b9c82a2deb1e6d8259506d651344" if OS.mac? && Hardware::CPU.intel?
  sha256 "d6de907458f5b6b02bee456c16ad3f7ef1fba820c1f46e5dcb8f78f2b68e9405" if OS.mac? && Hardware::CPU.arm?
  sha256 "1aa5b8391024c75264c54864cd890ad4af24df6f7b9ad0199cc0f68fa02addcb" if OS.linux? && Hardware::CPU.intel?
  sha256 "ce222dde4fb59d72c19a5fb75f37c8125ba1557d66e6233bf7b8246a01d5d7f8" if OS.linux? && Hardware::CPU.arm?

  def install
      bin.install "#{PACKAGE_NAME}" => "blackbird"
  end

  test do
      system "#{bin}/blackbird", "--help"
  end
end
