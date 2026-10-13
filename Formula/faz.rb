class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.12.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.2/faz_0.12.2_darwin_arm64.tar.gz"
      sha256 "86f196c2a7cb92a952a8e2c3bb6d889186047e01d430a294afc04bdbfd937c75"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.2/faz_0.12.2_darwin_amd64.tar.gz"
      sha256 "92f58b04228d43683652d8eed7128b5324e74d1a242af295327c9ed174b0354b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.2/faz_0.12.2_linux_arm64.tar.gz"
      sha256 "bc8c0099e30391bab4e9ff0fa0e955e9fa8349e662cef3b13824eedb0800e989"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.2/faz_0.12.2_linux_amd64.tar.gz"
      sha256 "155d5693e7683694b9655fe5d7d27759a94782d0d1b6b4be3f18752a1f1ed3d1"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
