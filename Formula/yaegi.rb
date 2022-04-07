# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yaegi < Formula
  desc "Yaegi is Another Elegant Go Interpreter.
It powers executable Go scripts and plugins, in embedded interpreters
or interactive shells, on top of the Go runtime.
"
  homepage "https://github.com/traefik/yaegi"
  version "0.11.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/traefik/yaegi/releases/download/v0.11.3/yaegi_v0.11.3_darwin_amd64.tar.gz"
      sha256 "92c2ae1e7377b3c56669a4cd7043286ca7d68cb6fa62b3ef7f2e2a6a82931fac"

      def install
        bin.install "yaegi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/traefik/yaegi/releases/download/v0.11.3/yaegi_v0.11.3_darwin_arm64.tar.gz"
      sha256 "f89c9129106eb41b35c61f2a2c1d92c9ac0183eb3035e7682d1d9fb9389c8560"

      def install
        bin.install "yaegi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/traefik/yaegi/releases/download/v0.11.3/yaegi_v0.11.3_linux_armv6.tar.gz"
      sha256 "8888691619b68b93d0ee984d9c44d5f36b988a56fadd0a147c18e3259c034339"

      def install
        bin.install "yaegi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/traefik/yaegi/releases/download/v0.11.3/yaegi_v0.11.3_linux_amd64.tar.gz"
      sha256 "7bea6dda33f9ca672e89e394e8bc326c4a7dc1f3d5b7b572dc81fff2bfb05963"

      def install
        bin.install "yaegi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/traefik/yaegi/releases/download/v0.11.3/yaegi_v0.11.3_linux_arm64.tar.gz"
      sha256 "9f631835ba7f7d5370f5dcb820296adf17d72e15dedd54f65b78c36c8a312c7f"

      def install
        bin.install "yaegi"
      end
    end
  end

  test do
    system "#{bin}/yaegi version"
  end
end
