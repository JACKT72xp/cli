class Multims < Formula
  desc "Multims is a tool for managing and syncing Kubernetes configurations"
  homepage "https://github.com/JACKT72xp/multims"
  version "1.5.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.6.41/multims_darwin_arm64"
      sha256 "4be83ffe2791024113523e8a40c82e71dd198b6c61f68b62f7b6e0980d9eabff"  # Reemplaza con el valor SHA256 correcto para multims_darwin_arm64

      def install
        bin.install "multims_darwin_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.6.41/multims_darwin_amd64"
      sha256 "08eaa193c875fb872c7ffba32e0727533d009f57bfbea6a8b56539c76d4e507c"  # Reemplaza con el valor SHA256 correcto para multims_darwin_amd64

      def install
        bin.install "multims_darwin_amd64" => "multims"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.6.41/multims_linux_arm64"
      sha256 "3853149a474af6dc6361390497b8b927f2d2b584783488929c1b973339b956d9"  # Reemplaza con el valor SHA256 correcto para multims_linux_arm64

      def install
        bin.install "multims_linux_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.6.41/multims_linux_amd64"
      sha256 "08eaa193c875fb872c7ffba32e0727533d009f57bfbea6a8b56539c76d4e507c"  # Reemplaza con el valor SHA256 correcto para multims_linux_amd64

      def install
        bin.install "multims_linux_amd64" => "multims"
      end
    end
  end

  test do
    system "#{bin}/multims", "--version"
  end
end
