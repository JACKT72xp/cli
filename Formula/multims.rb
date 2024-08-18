class Multims < Formula
  desc "Multims is a tool for managing and syncing Kubernetes configurations"
  homepage "https://github.com/JACKT72xp/multims"
  version "1.5.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.12/multims_darwin_arm64"
      sha256 "55c6cdc99f9c876c57f22aa43955b2fedb5cb10740354f588a700048559450b2"  # Reemplaza con el valor SHA256 correcto para multims_darwin_arm64

      def install
        bin.install "multims_darwin_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.12/multims_darwin_amd64"
      sha256 "9c8fdfe2e6fdb2680d22918156e065f29f3e43967e48dd6b600e35173f94390f"  # Reemplaza con el valor SHA256 correcto para multims_darwin_amd64

      def install
        bin.install "multims_darwin_amd64" => "multims"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.12/multims_linux_arm64"
      sha256 "c5a81688fe2a40875c7c889762a78efe68328e73c355cf7b3675150e74bf385a"  # Reemplaza con el valor SHA256 correcto para multims_linux_arm64

      def install
        bin.install "multims_linux_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.12/multims_linux_amd64"
      sha256 "63627da7d62cfeb9e9ac26b07f782612e9dc346232575931ff60b281227001f8"  # Reemplaza con el valor SHA256 correcto para multims_linux_amd64

      def install
        bin.install "multims_linux_amd64" => "multims"
      end
    end
  end

  test do
    system "#{bin}/multims", "--version"
  end
end