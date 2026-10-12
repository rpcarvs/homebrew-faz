class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.0/faz_0.12.0_darwin_arm64.tar.gz"
      sha256 "cb1205be3b99170394eebc84dd098e167083a292a5f50eb226465c267cfc1168"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.0/faz_0.12.0_darwin_amd64.tar.gz"
      sha256 "68ffc8b0dc0e35587d2521142053423933eba63cd5f3a14c01c4f7f811e3c521"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.0/faz_0.12.0_linux_arm64.tar.gz"
      sha256 "cd85ce493284f6a6daac8c2f03fc7f49355a05da90254702f4f6aeae3210def9"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.0/faz_0.12.0_linux_amd64.tar.gz"
      sha256 "ec1bd4a581fd469f1b75e6a527741076019e9e96243024c08d77f2c06ea5cf89"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
