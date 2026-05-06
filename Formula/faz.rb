class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.0/faz_0.6.0_darwin_arm64.tar.gz"
      sha256 "727a8af39c676fa415f61402adf9da6d65b7ac01034f933290a0b30254669b5c"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.0/faz_0.6.0_darwin_amd64.tar.gz"
      sha256 "c44e7f07e53f19b47c859d2369adf331ab2419c55bc9498f92e29ca1034568d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.0/faz_0.6.0_linux_arm64.tar.gz"
      sha256 "37776b06e0a771471b006f2e0fed1d469a9b79f19c5fda11d32e885dded3e497"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.0/faz_0.6.0_linux_amd64.tar.gz"
      sha256 "2ef7d3a5bb3125e14ca8819250f2e90748d5bfb9d638ffc6a018338ae108eb6e"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
