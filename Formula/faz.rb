class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.7.0/faz_0.7.0_darwin_arm64.tar.gz"
      sha256 "99e3a501162cc08e825af4b57ed2fcf855fa12664458b82c9ffd2aa3045e60dc"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.7.0/faz_0.7.0_darwin_amd64.tar.gz"
      sha256 "c46c206e540ff59cf4d10f7999208349273a4eb8e35377bf854b1e7600a1f9e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.7.0/faz_0.7.0_linux_arm64.tar.gz"
      sha256 "dba3201f01d0b1e20f17307c4ec635f6ea247dcba4184cfbf29fb1c7e8d35aa0"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.7.0/faz_0.7.0_linux_amd64.tar.gz"
      sha256 "0fb53e389b60cec72ccfc34148134bf6f05a271753255f2b0fc56f583fa6e2c2"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
