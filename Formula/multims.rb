class Multims < Formula
  desc "Tool for managing and syncing Kubernetes configurations"
  homepage "https://github.com/JACKT72xp/multims"
  version "1.6.43"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_darwin_arm64"
      sha256 "16b28900e68106c065ba995715291d2b5a32f70f313400477334733243b8ec8e"

      def install
        bin.install "multims_darwin_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_darwin_amd64"
      sha256 "db8b6a7fefad19239466a081bf2973e5d505b8b8e941817d71a9e2a43d43982f"

      def install
        bin.install "multims_darwin_amd64" => "multims"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_linux_arm64"
      sha256 "1488d4bf192bb10911bf69f80f533e1a6f5a0a3239f99f3b93f4b43a66c68ded"

      def install
        bin.install "multims_linux_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_linux_amd64"
      sha256 "43786d1355634d23bbd938d87cd791b1b727b8834969868e278b62905e623ffa"

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
