class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.2/faz_0.6.2_darwin_arm64.tar.gz"
      sha256 "a20d61cee0894737ab7bd673d74e88dc682158c454b7b1b7a078fa69ce228467"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.2/faz_0.6.2_darwin_amd64.tar.gz"
      sha256 "99e7e72040ab837a273562b373b6ee02a5da0d464da026d8e5fa0dac8d6ee04e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.2/faz_0.6.2_linux_arm64.tar.gz"
      sha256 "9e1052bc12d89076b04e3de259baaa0139d16e79acdbb79a5cebd3b2b479a3bb"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.2/faz_0.6.2_linux_amd64.tar.gz"
      sha256 "befc7dac514c99c086c9d1e3d711ef424f634668a16f23049035b85477fb930d"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
