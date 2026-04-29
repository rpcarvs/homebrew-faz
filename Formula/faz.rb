class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.1/faz_0.5.1_darwin_arm64.tar.gz"
      sha256 "3af2834c6967da57a2665cef387145884a015cd169cb3970fe1e0b13760f14e3"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.1/faz_0.5.1_darwin_amd64.tar.gz"
      sha256 "13d14b2168dd86abde5daea26313b732ab81ae0fa6da01334ce23209047c2df6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.1/faz_0.5.1_linux_arm64.tar.gz"
      sha256 "60379764536a4e987ba5d670ce904f6ac486a2f4f7553766bf0706a9d53e0327"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.1/faz_0.5.1_linux_amd64.tar.gz"
      sha256 "091fd2a946c189e366e80b8fc5d3512138ed425f8adf22b8b39c5d3911c11598"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
