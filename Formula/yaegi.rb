# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yaegi < Formula
  desc "Yaegi is Another Elegant Go Interpreter.
It powers executable Go scripts and plugins, in embedded interpreters
or interactive shells, on top of the Go runtime.
"
  homepage "https://github.com/traefik/yaegi"
  version "0.9.20"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/traefik/yaegi/releases/download/v0.9.20/yaegi_v0.9.20_darwin_amd64.tar.gz"
      sha256 "92db9ca597c57d08e92cefc7fe6e4784d323ffbca2579f5efbe1fe9278a47b07"
    end
    if Hardware::CPU.arm?
      url "https://github.com/traefik/yaegi/releases/download/v0.9.20/yaegi_v0.9.20_darwin_arm64.tar.gz"
      sha256 "c4d50fe9ae2a08c8c00691031f312fb2e7c550c37f468b9bb58eb0c713f9e773"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/traefik/yaegi/releases/download/v0.9.20/yaegi_v0.9.20_linux_amd64.tar.gz"
      sha256 "efcb0c6ade1264118df9ba825636ec10fff41bae50deafc935fece88916cfc90"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/traefik/yaegi/releases/download/v0.9.20/yaegi_v0.9.20_linux_armv6.tar.gz"
      sha256 "c1063a86b901fc8bce3f6198329e84397f7afcce1c0a9b521dbc46279aea57b6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/traefik/yaegi/releases/download/v0.9.20/yaegi_v0.9.20_linux_arm64.tar.gz"
      sha256 "49085aa9962046943385061eff2e7d994940d9ba8a4c4cd621f035e1911b5c18"
    end
  end

  def install
    bin.install "yaegi"
  end

  test do
    system "#{bin}/yaegi version"
  end
end
