class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.0/faz_0.5.0_darwin_arm64.tar.gz"
      sha256 "294b9b41b81940431df52397e41d1f0fcf7cc0162d6b02803cde2174fc7c49a0"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.0/faz_0.5.0_darwin_amd64.tar.gz"
      sha256 "d3850169d5a8369ce07ff80fcdda45a48e1aa4fca98213c96627781c63a3c91d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.0/faz_0.5.0_linux_arm64.tar.gz"
      sha256 "66a59f4f48d56df349e12ad0c778fc3c05ca83df2807ab74a3b4504022b565e0"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.0/faz_0.5.0_linux_amd64.tar.gz"
      sha256 "717a00dd0ad32c51cb97d109cc076cb9f9d5c9e913b8d11506e8e9fa769f3662"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
