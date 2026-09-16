class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.8.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.3/faz_0.8.3_darwin_arm64.tar.gz"
      sha256 "cae4540fc4f5723daca841bc45e999369af5b0b674d9526768c6de1f966a38b2"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.3/faz_0.8.3_darwin_amd64.tar.gz"
      sha256 "48fafb942dd5fe9585fefe4d4c2e1aaaa87e1bfeba50b764e202349a31ae8d7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.3/faz_0.8.3_linux_arm64.tar.gz"
      sha256 "f0e7013df8dd314b8870feea513024d64852993817996952621d918a564905ab"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.3/faz_0.8.3_linux_amd64.tar.gz"
      sha256 "c15b67225018723ed3089f2d47243f1fe78199f4a8ce999c0c250d62d9635947"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
