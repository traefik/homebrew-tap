# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yaegi < Formula
  desc "Yaegi is Another Elegant Go Interpreter.
It powers executable Go scripts and plugins, in embedded interpreters
or interactive shells, on top of the Go runtime.
"
  homepage "https://github.com/traefik/yaegi"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/traefik/yaegi/releases/download/v0.12.0/yaegi_v0.12.0_darwin_amd64.tar.gz"
      sha256 "5a9b2b24a9d8cc2a13e2f50c6d5770a992ea642b7efabd096607d4bc176fd71a"

      def install
        bin.install "yaegi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/traefik/yaegi/releases/download/v0.12.0/yaegi_v0.12.0_darwin_arm64.tar.gz"
      sha256 "8f68b08da478060dc55bf893c566cc05754ec669cbcf48d10d795ac4118398db"

      def install
        bin.install "yaegi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/traefik/yaegi/releases/download/v0.12.0/yaegi_v0.12.0_linux_amd64.tar.gz"
      sha256 "f868147ca0cac6a1cb2ec7f687c7bc082de15e9eab149ac803916e6058af45aa"

      def install
        bin.install "yaegi"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/traefik/yaegi/releases/download/v0.12.0/yaegi_v0.12.0_linux_armv6.tar.gz"
      sha256 "b3690016ecc78dddf65a212c15c8704d959dbdacbba58c5e9b0b590ac11015ce"

      def install
        bin.install "yaegi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/traefik/yaegi/releases/download/v0.12.0/yaegi_v0.12.0_linux_arm64.tar.gz"
      sha256 "fb9ea7c8563597301260c3bf91db2fec3441520a5c54441f6c9e54664eeb7b65"

      def install
        bin.install "yaegi"
      end
    end
  end

  test do
    system "#{bin}/yaegi version"
  end
end
