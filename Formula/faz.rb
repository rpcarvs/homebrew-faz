class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.2/faz_0.5.2_darwin_arm64.tar.gz"
      sha256 "1d5744ba7ecf9b31f1a98da7efa54d81be013c1e12a6ce4499a71d614d0d3abb"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.2/faz_0.5.2_darwin_amd64.tar.gz"
      sha256 "c0c1252d7e5ccbe942034b34fa7353670a5e051c5f81563189c4004743ce7e2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.2/faz_0.5.2_linux_arm64.tar.gz"
      sha256 "ab118acf3859b3a808a313d5f84f7ee2f4f02ba02a666488687c02d0e57cac49"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.2/faz_0.5.2_linux_amd64.tar.gz"
      sha256 "c9028b51dccdff008612474a80f449dcae2f730995e45d9f3d06eb0ea4ab92c9"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
