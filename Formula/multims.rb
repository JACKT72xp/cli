class Multims < Formula
  desc "Tool for managing and syncing Kubernetes configurations"
  homepage "https://github.com/JACKT72xp/multims"
  version "1.6.44"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_darwin_arm64"
      sha256 "2d871de5eddf5d93025c107bd107b0fb754109cb7732a562ee0784b73f5ec647"

      def install
        bin.install "multims_darwin_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_darwin_amd64"
      sha256 "1750b7736800e20bff3f4a3eeab212c495577b907ea36928bddf161ae9c280a4"

      def install
        bin.install "multims_darwin_amd64" => "multims"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_linux_arm64"
      sha256 "e3a844cb91f9e1e5378fcb68d219d4891f7cdc5b846579943d3f727b7d7eecfa"

      def install
        bin.install "multims_linux_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_linux_amd64"
      sha256 "be68eecefaa6f69f8da8ed39c74387cd5c249cb2565da4ee3c680facf9a7ef14"

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
