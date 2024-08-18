class Multims < Formula
  desc "Multims is a tool for managing and syncing Kubernetes configurations"
  homepage "https://github.com/JACKT72xp/multims"
  version "1.5.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.14/multims_darwin_arm64"
      sha256 "267d98bb7a8bdfb327de56e843307d42ead8d00a4568224562036405e827542f"  # Reemplaza con el valor SHA256 correcto para multims_darwin_arm64

      def install
        bin.install "multims_darwin_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.14/multims_darwin_amd64"
      sha256 "70f3e411d48f65ec136658e465055ea59be36c2cad15215b3274b8517b111966"  # Reemplaza con el valor SHA256 correcto para multims_darwin_amd64

      def install
        bin.install "multims_darwin_amd64" => "multims"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.14/multims_linux_arm64"
      sha256 "4bfd33bd146fcc032cdc7be23bdc3797a9f3a7c294d5b1220c91a88b7dc22aa9"  # Reemplaza con el valor SHA256 correcto para multims_linux_arm64

      def install
        bin.install "multims_linux_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.14/multims_linux_amd64"
      sha256 "0753af098b1fe692041efa6b5984656ffe2ffbc2056e4f6b96b4fe402ff6d94f"  # Reemplaza con el valor SHA256 correcto para multims_linux_amd64

      def install
        bin.install "multims_linux_amd64" => "multims"
      end
    end
  end

  test do
    system "#{bin}/multims", "--version"
  end
end