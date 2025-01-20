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
      sha256 "84414d6902d1e08f74bde50e3cc91135717bfda0ee1ed75616778430d476d3b8"

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
      sha256 "a425c51c4fe41c27556034be1e6dbf00d128ecbf3ef7ef3f1f7c72f9a6d835b1"

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
      sha256 "0598a73299285d6f894d019dc2f3adcdf39215781dacaad0614c71ed99078d8e"

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
