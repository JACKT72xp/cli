class Multims < Formula
  desc "Multims is a tool for managing and syncing Kubernetes configurations"
  homepage "https://github.com/JACKT72xp/multims"
  version "1.5.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.17/multims_darwin_arm64"
      sha256 "22bcb6ba104b52c89f4defd15e5c9a0cecbad06fa356e2791715dbb592443ee4"  # Reemplaza con el valor SHA256 correcto para multims_darwin_arm64

      def install
        bin.install "multims_darwin_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.17/multims_darwin_amd64"
      sha256 "5e9884c5a53811bf1bae6b11b5efa15b8d5033a3260a999dba382afb604ef2fc"  # Reemplaza con el valor SHA256 correcto para multims_darwin_amd64

      def install
        bin.install "multims_darwin_amd64" => "multims"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.17/multims_linux_arm64"
      sha256 "f0a1b7f00b098994a34e372aab863c471770fe63b1ef327ff1804372990d32a9"  # Reemplaza con el valor SHA256 correcto para multims_linux_arm64

      def install
        bin.install "multims_linux_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.17/multims_linux_amd64"
      sha256 "dd14b2dbc83e8b34f3bf10b07ae9630bfca664fa253755ce98fdd18cba1ddf8a"  # Reemplaza con el valor SHA256 correcto para multims_linux_amd64

      def install
        bin.install "multims_linux_amd64" => "multims"
      end
    end
  end

  test do
    system "#{bin}/multims", "--version"
  end
end