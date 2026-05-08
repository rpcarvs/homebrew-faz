class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.6.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.5/faz_0.6.5_darwin_arm64.tar.gz"
      sha256 "d3ec9e11194183c01e30e3149fb3bc410b80ece719d072390961081363baba56"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.5/faz_0.6.5_darwin_amd64.tar.gz"
      sha256 "6fca1ba8b67cda89a4cccd2e4bc86de5aeba178047c3cccced23131d52d4ae01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.5/faz_0.6.5_linux_arm64.tar.gz"
      sha256 "2f7e634546c035e6e5e8afe6ea739815b4b64d02cdc1b4f0f07f4f654d4ce745"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.5/faz_0.6.5_linux_amd64.tar.gz"
      sha256 "9313399a17c95db4c388b635f5a5914de6b95119e3dc121ea2db9ac0d4316f4b"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
