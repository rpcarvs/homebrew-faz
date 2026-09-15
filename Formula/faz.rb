class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.0/faz_0.8.0_darwin_arm64.tar.gz"
      sha256 "3bfe26c8831b7fc7dd558a07ed46ca5e7d715eca19c4917c890d45bf4a90dda3"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.0/faz_0.8.0_darwin_amd64.tar.gz"
      sha256 "edc142a9c022c03d185cd8dc607d631719235ad78e4f6f396e74c1726c7f6cee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.0/faz_0.8.0_linux_arm64.tar.gz"
      sha256 "9c291af0684f08df6e20de635dfb0fefb80a640b5a82916c791f0b05ad0fe989"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.0/faz_0.8.0_linux_amd64.tar.gz"
      sha256 "da48419f4d908bc0461f7f37dc9c3679ba98468b55cf62842385830002fd2ddc"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
