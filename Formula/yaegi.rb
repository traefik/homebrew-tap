# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yaegi < Formula
  desc "Yaegi is Another Elegant Go Interpreter.
It powers executable Go scripts and plugins, in embedded interpreters
or interactive shells, on top of the Go runtime.
"
  homepage "https://github.com/traefik/yaegi"
  version "0.14.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/traefik/yaegi/releases/download/v0.14.0/yaegi_v0.14.0_darwin_amd64.tar.gz"
      sha256 "840d61f401f14f299b44485364cf92b8aa7e68bc2b5d71d635f464046e221ba1"

      def install
        bin.install "yaegi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/traefik/yaegi/releases/download/v0.14.0/yaegi_v0.14.0_darwin_arm64.tar.gz"
      sha256 "edc6cb00ff7378f82045a67f4bab403d1ddf4d9f32ac7ca1f2292cd26a6a3fb9"

      def install
        bin.install "yaegi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/traefik/yaegi/releases/download/v0.14.0/yaegi_v0.14.0_linux_arm64.tar.gz"
      sha256 "52c113192b8aac638acc1dec5a3c41a4ccd110c5d6751bccae3f43bd067a034b"

      def install
        bin.install "yaegi"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/traefik/yaegi/releases/download/v0.14.0/yaegi_v0.14.0_linux_armv6.tar.gz"
      sha256 "3bf5abf123bd114a84c889ff2eb383c373f64da0925a0c241358de22e7c592ec"

      def install
        bin.install "yaegi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/traefik/yaegi/releases/download/v0.14.0/yaegi_v0.14.0_linux_amd64.tar.gz"
      sha256 "4d4baa3ff9d31e8290cc55c87ef512a509283b6c152066b8ba742a2835f54acf"

      def install
        bin.install "yaegi"
      end
    end
  end

  test do
    system "#{bin}/yaegi version"
  end
end
