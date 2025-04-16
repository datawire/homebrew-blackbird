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

  sha256 "725b55a9b8f24053f1da2dd4bec425e48c5dc591eb012bb3535558f3306c74a8" if OS.mac? && Hardware::CPU.intel?
  sha256 "6c19e789265fb472547c5e727a59871769ef7d5608d9b5a8a368ba62cf06baff" if OS.mac? && Hardware::CPU.arm?
  sha256 "66dbdf1206cd399dcd229871a231dfef85a4adcf078af32799dea03283bd2bf8" if OS.linux? && Hardware::CPU.intel?
  sha256 "33fe6dc3d2e1711c3da6b7ecc2fa75411e2d036eda22803d7cfd1461c4414275" if OS.linux? && Hardware::CPU.arm?

  def install
      bin.install "#{PACKAGE_NAME}" => "blackbird"
  end

  test do
      system "#{bin}/blackbird", "--help"
  end
end
