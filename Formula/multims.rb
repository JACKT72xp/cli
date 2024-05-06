# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Multims < Formula
  desc "How engineers learn about CLIs"
  homepage "https://github.com/JACKT72xp/cli"
  version "1.1.23"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.1.23/multims_1.1.23_darwin_amd64.tar.gz"
      sha256 "293ff112ff12261a10441dd276476a605af51d7796a6b6105d62815cfca9b465"

      def install
        bin.install "multims"
        (etc/"multims").mkpath
        (etc/"multims/templates").install Dir["templates/*"]
        (etc/"multims/scripts").install Dir["scripts/*"]
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.1.23/multims_1.1.23_darwin_arm64.tar.gz"
      sha256 "b1f2a9a88f24a32b4591837314397e5cf7f5015558e3c73cf44dfb09041bae08"

      def install
        bin.install "multims"
        (etc/"multims").mkpath
        (etc/"multims/templates").install Dir["templates/*"]
        (etc/"multims/scripts").install Dir["scripts/*"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.1.23/multims_1.1.23_linux_amd64.tar.gz"
      sha256 "5522330f0cfa3e8fd8eec70ec774bf3a039d8b2cf987482aa5f6e1634e770121"

      def install
        bin.install "multims"
        (etc/"multims").mkpath
        (etc/"multims/templates").install Dir["templates/*"]
        (etc/"multims/scripts").install Dir["scripts/*"]
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JACKT72xp/multims/releases/download/v1.1.23/multims_1.1.23_linux_arm64.tar.gz"
      sha256 "e197bcd926123d22e30aab61995f7a82403cd8a15d65a8ee2337100f7fa3d0db"

      def install
        bin.install "multims"
        (etc/"multims").mkpath
        (etc/"multims/templates").install Dir["templates/*"]
        (etc/"multims/scripts").install Dir["scripts/*"]
      end
    end
  end

  def caveats
    <<~EOS
      Templates are located in #{etc/"multims/templates"}.
      Scripts are located in #{etc/"multims/scripts"}.
      Make sure fswatch is installed by running `brew install fswatch`.
    EOS
  end
end
