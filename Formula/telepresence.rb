# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://www.getambassador.io/products/telepresence"

  conflicts_with "telepresence"

  on_macos do
    # macfuse is a cask and formula can't depend on casks, so we can't actually
    # do this. This is probably fine since you don't _need_ macfuse to run
    # the cli, just to do mounts
    #depends_on "macfuse"

    if Hardware::CPU.arm?
      url "https://app.getambassador.io/download/tel2/darwin/arm64/2.20.2/telepresence"
      sha256 "6389abecbf35aed9009d7d2b6190d71b114d9fd5046f7cb784407348ecfe417b"

      def install
        bin.install "telepresence"

        # TODO installing completions raises an error
        # # Install bash completion
        # output = Utils.safe_popen_read("#{bin}/telepresence", "completion", "bash")
        # (bash_completion/"telepresence").write output

        # # Install zsh completion
        # output = Utils.safe_popen_read("#{bin}/telepresence", "completion", "zsh")
        # (zsh_completion/"_telepresence").write output

        # # Install fish completion
        # output = Utils.safe_popen_read("#{bin}/telepresence", "completion", "fish")
        # (fish_completion/"telepresence.fish").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://app.getambassador.io/download/tel2/darwin/amd64/2.20.2/telepresence"
      sha256 "d114f5a1284fe29473ec1327a6a7e26846250901e10043073ee15b1866e1ff1e"

      def install
        bin.install "telepresence"

        # TODO installing completions raises an error
        # # Install bash completion
        # output = Utils.safe_popen_read("#{bin}/telepresence", "completion", "bash")
        # (bash_completion/"telepresence").write output

        # # Install zsh completion
        # output = Utils.safe_popen_read("#{bin}/telepresence", "completion", "zsh")
        # (zsh_completion/"_telepresence").write output

        # # Install fish completion
        # output = Utils.safe_popen_read("#{bin}/telepresence", "completion", "fish")
        # (fish_completion/"telepresence.fish").write output
      end
    end
  end

  on_linux do
    # if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    #   url "https://app.getambassador.io/download/tel2/linux/arm64/v2.20.2/telepresence"
    #   sha256 "__TARBALL_HASH_LINUX_ARM64__"

    #   def install
    #     bin.install "telepresence"

    #     # Install bash completion
    #     output = Utils.safe_popen_read("#{bin}/telepresence", "completion", "bash")
    #     (bash_completion/"telepresence").write output

    #     # Install zsh completion
    #     output = Utils.safe_popen_read("#{bin}/telepresence", "completion", "zsh")
    #     (zsh_completion/"_telepresence").write output

    #     # Install fish completion
    #     output = Utils.safe_popen_read("#{bin}/telepresence", "completion", "fish")
    #     (fish_completion/"telepresence.fish").write output
    #   end
    # end
    if Hardware::CPU.intel?
      url "https://app.getambassador.io/download/tel2/linux/amd64/2.20.2/telepresence"
      sha256 "6ee330bf651b4f2abc9f6683c847a580a2f04c5a16f5629e11f4e7ebcad17927"

      def install
        bin.install "telepresence"

        # TODO installing completions raises an error
        # # Install bash completion
        # output = Utils.safe_popen_read("#{bin}/telepresence", "completion", "bash")
        # (bash_completion/"telepresence").write output

        # # Install zsh completion
        # output = Utils.safe_popen_read("#{bin}/telepresence", "completion", "zsh")
        # (zsh_completion/"_telepresence").write output

        # # Install fish completion
        # output = Utils.safe_popen_read("#{bin}/telepresence", "completion", "fish")
        # (fish_completion/"telepresence.fish").write output
      end
    end
  end

  test do
    system "#{bin}/telepresence", "--help"
  end
end
