# This file was generated by GoReleaser. DO NOT EDIT.
class Yaegi < Formula
  desc "Yaegi is Another Elegant Go Interpreter.
It powers executable Go scripts and plugins, in embedded interpreters
or interactive shells, on top of the Go runtime.
"
  homepage "https://github.com/traefik/yaegi"
  version "0.9.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/traefik/yaegi/releases/download/v0.9.5/yaegi_v0.9.5_darwin_amd64.tar.gz"
    sha256 "0c0fa645c22766bebce21b4d4aea08f415026e662591f087f22133930f6d3f3e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/traefik/yaegi/releases/download/v0.9.5/yaegi_v0.9.5_linux_amd64.tar.gz"
      sha256 "ce71c9ce2b88539e211c26fb063193ea9d7503ff5e0ca6a8749e2089fc86ab36"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/traefik/yaegi/releases/download/v0.9.5/yaegi_v0.9.5_linux_arm64.tar.gz"
        sha256 "669f012949091fdad4d04dd56be2818a12a32ad0f5ce9e8fe7d301f88c898302"
      else
        url "https://github.com/traefik/yaegi/releases/download/v0.9.5/yaegi_v0.9.5_linux_armv6.tar.gz"
        sha256 "151cc29738e2e61e8ba3e49ac15830291b5f78a9ad4b521c61bac80e751d6871"
      end
    end
  end

  def install
    bin.install "yaegi"
  end

  test do
    system "#{bin}/yaegi version"
  end
end
