# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  include Language::Python::Virtualenv
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://github.com/datawire/telepresence/archive/0.83.tar.gz"
  sha256 "397a4a469f7f5e725a1e0e76b61709169fb67884808c513ea6271ee0a2b52f52"

  depends_on "python"
  depends_on "torsocks"
  depends_on "sshfs"

  def install
    venv = virtualenv_create(libexec, "python3")
    venv.pip_install "git+https://github.com/datawire/sshuttle.git@telepresence"
    bin.install libexec/"bin/sshuttle-telepresence"
    venv.pip_install_and_link buildpath
  end

  def caveats
    <<~EOS
      Use of the container method requires socat.
        brew install socat
    EOS
  end

  test do
    system "#{bin}/telepresence", "--help"
    system "#{bin}/sshuttle-telepresence", "--version"
  end
end
