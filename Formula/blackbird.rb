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

  sha256 "d8161210fbac9499b425edfe2ce4edc432ab291f65bd103ea3e232121808e6cb" if OS.mac? && Hardware::CPU.intel?
  sha256 "139ec42e2d7c0c72f62ea8e5910716c214d80013c6ac606db76d47d3e0c15319" if OS.mac? && Hardware::CPU.arm?
  sha256 "0d149d76d3ba8d54188a7cad550f125f3d07863013c1d70c229d2445e5ab4c72" if OS.linux? && Hardware::CPU.intel?
  sha256 "d739cd8df7fe58a93f2f22e1587d131ce21a4e4cd80e00864d191a80fa2b201f" if OS.linux? && Hardware::CPU.arm?

  def install
      bin.install "#{PACKAGE_NAME}" => "blackbird"
  end

  test do
      system "#{bin}/blackbird", "--help"
  end
end
