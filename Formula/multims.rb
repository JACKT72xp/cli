class Multims < Formula
  desc "Tool for managing and syncing Kubernetes configurations"
  homepage "https://github.com/JACKT72xp/multims"
  version "1.6.46"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_darwin_arm64"
      sha256 "91ddf3fea00f1701369dc3b599b18b9fd73bbb68ce29922b553e90d0ff336de3"

      def install
        bin.install "multims_darwin_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_darwin_amd64"
      sha256 "06bee0948db4c4246d9d329c864bd3afb004f0c57a2f63883118d537727bb1ef"

      def install
        bin.install "multims_darwin_amd64" => "multims"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_linux_arm64"
      sha256 "78d9cae3f6424b08b277e56f80f3519309112373043d94a9ba99e7d5197490da"

      def install
        bin.install "multims_linux_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_linux_amd64"
      sha256 "ea838ed978a77d63f67ecb45fc6eb8fc2cc5960a0361ed2da8704d8f1ef58a27"

      def install
        bin.install "multims_linux_amd64" => "multims"
      end
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multims --version")
  end
end
