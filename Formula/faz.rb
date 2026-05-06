class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.1/faz_0.6.1_darwin_arm64.tar.gz"
      sha256 "0474714961e6f9955752f31834646cfc4e1153bbb22b4f23233973776122810e"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.1/faz_0.6.1_darwin_amd64.tar.gz"
      sha256 "18dda7c42875ee226618ad24310df7329bab3367caa94bbfc343b67678fce90e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.1/faz_0.6.1_linux_arm64.tar.gz"
      sha256 "269692ad8e54d6227b5b9db43be668207660b01af46e8156cea91313f620d4d6"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.1/faz_0.6.1_linux_amd64.tar.gz"
      sha256 "700e55d23b5d46dfc072e29bd751de5ba0ced2ffa4e2573d477f466e2ecacc42"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
