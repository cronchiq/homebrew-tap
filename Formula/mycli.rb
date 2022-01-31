# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mycli < Formula
  desc "My CLI demo"
  homepage "https://github.com/cronchiq/mycli"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cronchiq/mycli/releases/download/v0.1.3/mycli_v0.1.3_darwin_arm64.tar.gz"
      sha256 "b96fea994ee5854a651aaab891afec620baa1908da6b711729836574d0670d48"

      def install
        bin.install "mycli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cronchiq/mycli/releases/download/v0.1.3/mycli_v0.1.3_darwin_amd64.tar.gz"
      sha256 "cc0bc4ae017bd7d2aa0c080f9af2c47db7476ef06dacf78f7f3aecce7506937f"

      def install
        bin.install "mycli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cronchiq/mycli/releases/download/v0.1.3/mycli_v0.1.3_linux_amd64.tar.gz"
      sha256 "adfed93c2d3e4e169a43a98f2267bfa4c7f38835337c71ec95bc3c17ceda98d4"

      def install
        bin.install "mycli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cronchiq/mycli/releases/download/v0.1.3/mycli_v0.1.3_linux_arm64.tar.gz"
      sha256 "0a6a1e07bc3b47d5a1779c115c7c3d3ff98523755f83ec8c253a33c411aaaa0a"

      def install
        bin.install "mycli"
      end
    end
  end

  conflicts_with "slu-edge"

  def caveats; <<~EOS
    How to use this binary: https://github.com/cronchiq/mycli
  EOS
  end

  test do
    system "#{bin}/mycli"
  end
end
