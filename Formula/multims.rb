class Multims < Formula
  desc "Multims is a tool for managing and syncing Kubernetes configurations"
  homepage "https://github.com/JACKT72xp/multims"
  version "1.5.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.19/multims_darwin_arm64"
      sha256 "8ae105ecf9616dbff7d2641e49ebe241a2821a6de5fd5716f7a227160988c8cc"  # Reemplaza con el valor SHA256 correcto para multims_darwin_arm64

      def install
        bin.install "multims_darwin_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.19/multims_darwin_amd64"
      sha256 "0e6e254c5d09201dcd0b665ff15f82c4cb235fc81ca63bab426f3ec23f230013"  # Reemplaza con el valor SHA256 correcto para multims_darwin_amd64

      def install
        bin.install "multims_darwin_amd64" => "multims"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.19/multims_linux_arm64"
      sha256 "676b58857edb3dd6d81641ce5f83e669f0682f554b334b5fe689b133b1e3d048"  # Reemplaza con el valor SHA256 correcto para multims_linux_arm64

      def install
        bin.install "multims_linux_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.19/multims_linux_amd64"
      sha256 "19f152398aa93704d246eae29439ffe5374d22990e32c5b358e0ad65622e2a21"  # Reemplaza con el valor SHA256 correcto para multims_linux_amd64

      def install
        bin.install "multims_linux_amd64" => "multims"
      end
    end
  end

  test do
    system "#{bin}/multims", "--version"
  end
end