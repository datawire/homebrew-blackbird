# This script is generated automatically by the release automation code in the
# Blackbird CLI repository:
class Blackbird < Formula
  desc "Ambassador Blackbird is an API management and development tool that supercharges your ability to develop, test, mock, and deploy API services."
  homepage "https://www.getambassador.io/products/blackbird/api-development"
  version "1.14.1"

  BASE_URL = "https://blackbird.a8r.io/api/download/cli"
  ARCH = Hardware::CPU.arm? ? "arm64" : "amd64"
  OPERATING_SYSTEM = OS.mac? ? "darwin" : "linux"
  PACKAGE_NAME = "releases.datawire.io"

  url "#{BASE_URL}/v#{version}/#{OPERATING_SYSTEM}/#{ARCH}"

  sha256 "c0717f81609cda6969dd1f7a02a60c8684cbf587191c2a8fcae216e0b5d20d08" if OS.mac? && Hardware::CPU.intel?
  sha256 "4c3126347b1e8fdcbcebbdf8c631bcbc56c4c91e6a3da8f9b5b0b40d22f21785" if OS.mac? && Hardware::CPU.arm?
  sha256 "dcbe62720ac3514ab0cb9c9498b5d3dda35ed6a084af613c463b76d7b5344d1d" if OS.linux? && Hardware::CPU.intel?
  sha256 "97d29737577d2cf37cadb99ecada0e1edda01baef8992a7a02c2d772aac6d3f1" if OS.linux? && Hardware::CPU.arm?

  def install
      bin.install "#{PACKAGE_NAME}" => "blackbird"
  end

  test do
      system "#{bin}/blackbird", "--help"
  end
end
