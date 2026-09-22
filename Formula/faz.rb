class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.9.0/faz_0.9.0_darwin_arm64.tar.gz"
      sha256 "680c40cb27c60d9b43ad362f12f561cd8c0beb9afabf300138bdfadf92b271f7"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.9.0/faz_0.9.0_darwin_amd64.tar.gz"
      sha256 "9e63266a59abe46b3be63ceb7334115bc4343485ed6ff98a2728e26845eff6ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.9.0/faz_0.9.0_linux_arm64.tar.gz"
      sha256 "92b99acc4afaa6d09c862fd60b40b7d52b59f3088f2ecc5e3172a69e1cab075f"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.9.0/faz_0.9.0_linux_amd64.tar.gz"
      sha256 "d7e9d5eced02246da1a6ff066b53f3b2dddc572dd6c082767001bed4767d51b8"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
