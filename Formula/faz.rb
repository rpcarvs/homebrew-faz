class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.7.1/faz_0.7.1_darwin_arm64.tar.gz"
      sha256 "4d8ed9ead0448c94607e632d4c34d5ed749fe041bc514a1a25f2298334055e2b"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.7.1/faz_0.7.1_darwin_amd64.tar.gz"
      sha256 "107280f6952d03d6822b86fe27a8cb9696edfb291fc4f12bfd0e060766ad056d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.7.1/faz_0.7.1_linux_arm64.tar.gz"
      sha256 "270ae1fe8de87d08c302d913d61e0896a4b85d2a8013d79bc5c86c67e53b07e5"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.7.1/faz_0.7.1_linux_amd64.tar.gz"
      sha256 "f262fac14f33cbfa0ab42dddac0ac98b29c4f4deb5f7d211d03f9dc42467603b"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
