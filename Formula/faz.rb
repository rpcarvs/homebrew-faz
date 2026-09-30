class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.10.0/faz_0.10.0_darwin_arm64.tar.gz"
      sha256 "5d03b6c3d713451ebd9bceac08964412d00f6b583c229f602b586c015462d1e4"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.10.0/faz_0.10.0_darwin_amd64.tar.gz"
      sha256 "94ce9e5a86e4076bf5b43cf7393f6e6f948bbb1e1061fa70070a5709f3a2fb88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.10.0/faz_0.10.0_linux_arm64.tar.gz"
      sha256 "00cb196d2dc83471768a26f1d7590a331f2c262deabe28cac68d1710df8f9763"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.10.0/faz_0.10.0_linux_amd64.tar.gz"
      sha256 "f25fe65cc4958c27526733121ee8b7ced52de66659a2b5ae5c12d133550640a1"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
