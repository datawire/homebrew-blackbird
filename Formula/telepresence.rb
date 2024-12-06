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
      url "https://app.getambassador.io/download/tel2/darwin/arm64/2.20.1/telepresence"
      sha256 "e2c13bc6eee920344dcd4d44105b8a461c8dd666c15fa2ef5e361ab64b58e560"

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
      url "https://app.getambassador.io/download/tel2/darwin/amd64/2.20.1/telepresence"
      sha256 "6b7aff82203ed12af176a658eba9644967f98707af5c7059914fc47b62503614"

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
    #   url "https://app.getambassador.io/download/tel2/linux/arm64/v2.20.1/telepresence"
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
      url "https://app.getambassador.io/download/tel2/linux/amd64/2.20.1/telepresence"
      sha256 "ea35cde65bb7faa2122be81d9bff9161ee279170faf54af52e2abf4344dc25ba"

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
