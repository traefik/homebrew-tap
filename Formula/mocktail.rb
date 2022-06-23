# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mocktail < Formula
  desc "Naive code generator that creates mock implementation using testify.mock.
"
  homepage "https://github.com/traefik/mocktail"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/traefik/mocktail/releases/download/v0.2.2/mocktail_v0.2.2_darwin_arm64.tar.gz"
      sha256 "08058f6d7f324c537184b171617d614a842cf13e12901aef7acfca3db53b7a2c"

      def install
        bin.install "mocktail"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/traefik/mocktail/releases/download/v0.2.2/mocktail_v0.2.2_darwin_amd64.tar.gz"
      sha256 "a3ce9cbac1b78f26b1c9d8e7d55eef2a0e0f7943e20e65796c56e31a185e1f3c"

      def install
        bin.install "mocktail"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/traefik/mocktail/releases/download/v0.2.2/mocktail_v0.2.2_linux_arm64.tar.gz"
      sha256 "611abeb6a3e60499c13cf1df2be77f19e28d1ace71f19a44bd91c149f7370132"

      def install
        bin.install "mocktail"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/traefik/mocktail/releases/download/v0.2.2/mocktail_v0.2.2_linux_amd64.tar.gz"
      sha256 "3a266bb39fb537f791601e6b6cf0d6916e1030e58b38ee42d92e4660d59e1203"

      def install
        bin.install "mocktail"
      end
    end
  end

  test do
    system "echo 0"
  end
end
