# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mycli < Formula
  desc "My CLI demo"
  homepage "https://github.com/cronchiq/mycli"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cronchiq/mycli/releases/download/v0.1.4/mycli_v0.1.4_darwin_amd64.tar.gz"
      sha256 "0c68dc79ebd96f60e64d203cccb2b0c37186cca500ac31b48e6b8dfc85a18f45"

      def install
        bin.install "mycli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cronchiq/mycli/releases/download/v0.1.4/mycli_v0.1.4_darwin_arm64.tar.gz"
      sha256 "fa6ef2883bd1a28628c02dbc513a52535909ca4234239fd488531269ed60f6c2"

      def install
        bin.install "mycli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cronchiq/mycli/releases/download/v0.1.4/mycli_v0.1.4_linux_arm64.tar.gz"
      sha256 "3109a474d1efe1f4e120104ea7b174867d4049ff46cd213388adcaed1493812a"

      def install
        bin.install "mycli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cronchiq/mycli/releases/download/v0.1.4/mycli_v0.1.4_linux_amd64.tar.gz"
      sha256 "413e47a653aa3f317f146d1e5f6801cce958bf41cdab352e66748e8e55263bfb"

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
