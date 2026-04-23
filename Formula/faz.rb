class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.4.0/faz_0.4.0_darwin_arm64.tar.gz"
      sha256 "a1531c2f0418f50f4595a1e67607d1eada244b91064404ab3b1615dabf6ca403"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.4.0/faz_0.4.0_darwin_amd64.tar.gz"
      sha256 "f1af741da00ea7d90e3177e79eece0edb88b4725536aeba937e1e085fff24888"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.4.0/faz_0.4.0_linux_arm64.tar.gz"
      sha256 "7c907e1ad36563fd5e629355f08cc9714c068b9826cf03beeec2f992e8ab7abb"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.4.0/faz_0.4.0_linux_amd64.tar.gz"
      sha256 "11176e48d7e488f04fc1ea23a26de9195a9043579cf0d0e5095672e4e1297b37"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
