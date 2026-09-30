class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.11.0/faz_0.11.0_darwin_arm64.tar.gz"
      sha256 "04c66aa08197dbc1d40d0b442893325249106c691b3a5079e781c7c2061d399b"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.11.0/faz_0.11.0_darwin_amd64.tar.gz"
      sha256 "2bfcb1ad5f6aea491ddf6b4ef0495e298abda8d63deebeaf03de0736bde324c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.11.0/faz_0.11.0_linux_arm64.tar.gz"
      sha256 "d5aee2154bc2333874b8bb17009100c5ec627c1fc4012a791f831c8a8082c775"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.11.0/faz_0.11.0_linux_amd64.tar.gz"
      sha256 "b62f194fa4a62d444c8bbd0c87b03fe1241fec12f9f8f1b588b4e6993ef1838f"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
