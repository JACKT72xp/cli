class Multims < Formula
  desc "Tool for managing and syncing Kubernetes configurations"
  homepage "https://github.com/JACKT72xp/multims"
  version "1.6.52"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_darwin_arm64"
      sha256 "f8395d143ab71ffe704471595be41558d4e64302314b61555f077e1a5e673030"

      def install
        bin.install "multims_darwin_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_darwin_amd64"
      sha256 "7c04df650a76e49ed99ee2d541c10aa32988489af2861446155d20d57875972f"

      def install
        bin.install "multims_darwin_amd64" => "multims"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_linux_arm64"
      sha256 "614b1726067321b90a702cfa2e54388d9153d3b3a546f8532aa4570a97b0bfa7"

      def install
        bin.install "multims_linux_arm64" => "multims"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v#{version}/multims_linux_amd64"
      sha256 "7959a2c017b3838edca7dd5cb2280544a2dfdb8c5382ea87eb74d4b6f6b21ebc"

      def install
        bin.install "multims_linux_amd64" => "multims"
      end
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
  # Define el archivo plist dentro de la fórmula
  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>ProgramArguments</key>
          <array>
            <string>#{opt_bin}/multims</string>
            <string>ui</string>
          </array>
          <key>RunAtLoad</key>
          <true/>
          <key>KeepAlive</key>
          <true/>
        </dict>
      </plist>
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multims --version")
  end
end
