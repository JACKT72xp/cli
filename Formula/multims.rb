class Multims < Formula
  desc "Multims is a tool for managing and syncing Kubernetes configurations"
  homepage "https://github.com/JACKT72xp/multims"
  version "1.5.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.4/multims_darwin_arm64"
      sha256 "8bb86f466bdc40efab40eff62ac0544b6b20a445d35e129cf9c2bf1c7dc04c5d"  # Reemplaza con el valor SHA256 correcto para multims_darwin_arm64

      def install
        bin.install "multims_darwin_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.4/multims_darwin_amd64"
      sha256 "f05ee1863787b9a9bdd095074e3ba4abd7b811c2d3f280968883f3d0f7a09f70"  # Reemplaza con el valor SHA256 correcto para multims_darwin_amd64

      def install
        bin.install "multims_darwin_amd64" => "multims"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.4/multims_linux_arm64"
      sha256 "58d48fbda2f0bd4ab4c75ce708196f066145759e42532b440c2f0bc6bd515170"  # Reemplaza con el valor SHA256 correcto para multims_linux_arm64

      def install
        bin.install "multims_linux_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.5.4/multims_linux_amd64"
      sha256 "13435c1ef005a78871a1b7f629148089e988e712b29aa07430bda3372694b9f0"  # Reemplaza con el valor SHA256 correcto para multims_linux_amd64

      def install
        bin.install "multims_linux_amd64" => "multims"
      end
    end
  end

  test do
    system "#{bin}/multims", "--version"
  end
end