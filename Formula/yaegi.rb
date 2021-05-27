# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yaegi < Formula
  desc "Yaegi is Another Elegant Go Interpreter.
It powers executable Go scripts and plugins, in embedded interpreters
or interactive shells, on top of the Go runtime.
"
  homepage "https://github.com/traefik/yaegi"
  version "0.9.18"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/traefik/yaegi/releases/download/v0.9.18/yaegi_v0.9.18_darwin_amd64.tar.gz"
    sha256 "c374e8bb14598d974a7096a7ad46b75ac09113ec9bd09665e38b89b4484fa7ca"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/traefik/yaegi/releases/download/v0.9.18/yaegi_v0.9.18_darwin_arm64.tar.gz"
    sha256 "ce91df150ca54b510599940e644ecc900a1ae87b6586dd9cba59d6919cb3d817"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/traefik/yaegi/releases/download/v0.9.18/yaegi_v0.9.18_linux_amd64.tar.gz"
    sha256 "aab8e46484ced008013598f3cf7a58b4d2d9ad58f692ed25d25e3f899482c0d3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/traefik/yaegi/releases/download/v0.9.18/yaegi_v0.9.18_linux_armv6.tar.gz"
    sha256 "b767ad9364eb31a0aff9a726a048959ba9724c99b08fcf8982b63122822d31a1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/traefik/yaegi/releases/download/v0.9.18/yaegi_v0.9.18_linux_arm64.tar.gz"
    sha256 "0ee9d0c22b8778db4e310f7ef24acdeb999f08eb3d320a55440ea40923257911"
  end

  def install
    bin.install "yaegi"
  end

  test do
    system "#{bin}/yaegi version"
  end
end
