class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.6.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.4/faz_0.6.4_darwin_arm64.tar.gz"
      sha256 "66ac0d29ed5c0f598f6a5b2cdd07e4ad39db75fd01f732dc9f1b2e9b3be04199"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.4/faz_0.6.4_darwin_amd64.tar.gz"
      sha256 "8841741edac3151440bb8a075194fb08428909e67c8b58b5104a9a728b863c22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.4/faz_0.6.4_linux_arm64.tar.gz"
      sha256 "dbfc5ddef1164a840cccbb45dc54bb04c80e21e566d0b9407043f49069ac3701"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.4/faz_0.6.4_linux_amd64.tar.gz"
      sha256 "8d634b35b75600521a82227692ed8df0b0fb0878a43dcc24f35a24bd07a4d848"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
