class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.9.1/faz_0.9.1_darwin_arm64.tar.gz"
      sha256 "adefe42466e3d62f30b73a9d4a76f3a9dd003c168fc303e169499d21d9727bd4"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.9.1/faz_0.9.1_darwin_amd64.tar.gz"
      sha256 "ebfa3e19fde9d4c9afbe7ee1a2d0b3140d15b18bf2972a080e15a2666b9ef8e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.9.1/faz_0.9.1_linux_arm64.tar.gz"
      sha256 "071adb8f1fd3ed488b4fc4424900a4a5eba92ce13f565dbb86a92c3e039c5008"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.9.1/faz_0.9.1_linux_amd64.tar.gz"
      sha256 "e8a21d5380b515f096945d26d429d9cb712ddb11125d1173ca4d83eebbbd2eba"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
