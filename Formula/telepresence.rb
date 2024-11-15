# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"

  conflicts_with "telepresence"

  on_macos do
    # macfuse is a cask and formula can't depend on casks, so we can't actually
    # do this. This is probably fine since you don't _need_ macfuse to run
    # the cli, just to do mounts
    #depends_on "macfuse"

    if Hardware::CPU.arm?
      url "https://app.getambassador.io/download/tel2/darwin/arm64/2.20.0/telepresence"
      sha256 "bc2c3239b382fe92340e4f2164b9600748976a17bf67212e23b505188fbd567e"

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
      url "https://app.getambassador.io/download/tel2/darwin/amd64/2.20.0/telepresence"
      sha256 "0ae0ae214f12554fc68c3c11b6366cb0b75313388baf6a40917d85642ba2ddae"

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
    #   url "https://app.getambassador.io/download/tel2/linux/arm64/v2.20.0/telepresence"
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
      url "https://app.getambassador.io/download/tel2/linux/amd64/2.20.0/telepresence"
      sha256 "dc1c3a1bb1d20bd4eb56eda17095a575a5e8a77e68f9da607c7319f657ac1337"

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
