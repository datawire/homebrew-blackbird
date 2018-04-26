# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  include Language::Python::Virtualenv
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://github.com/datawire/telepresence/archive/0.86.tar.gz"
  sha256 "0c72366d8c62a58e94bf24fb0aa1110c9ca77f26cdab4956a710af97e6f15d29"

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
