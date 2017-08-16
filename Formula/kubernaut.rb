# This script is generated automatically by the release automation code in the
# Kubernaut repository:
class Kubernaut < Formula
  include Language::Python::Virtualenv

  desc     "On-demand, ephemeral Kubernetes clusters for development and testing"
  homepage "https://github.com/datawire/kubernaut"
  url      "https://github.com/datawire/kubernaut/archive/0.1.8.tar.gz"
  sha256   "61ac20db236df1a890203c87fa1032ea8d0bdaf0a138e0f3dac7d4c49e72e711"

  depends_on "python3"

  def install
    venv = virtualenv_create(libexec)
    system libexec/"bin/pip3", "install", "-v", "--no-binary", ":all:",
                              "--ignore-installed", buildpath
    system libexec/"bin/pip3", "uninstall", "-y", name
    venv.pip_install_and_link buildpath
  end

  test do
    system "kubernaut", "--help"
  end
end