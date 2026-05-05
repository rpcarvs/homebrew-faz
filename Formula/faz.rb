class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.3/faz_0.5.3_darwin_arm64.tar.gz"
      sha256 "5c20d04470b74b39cc6189e78c0ef4f1811c33a0fde05f9500575058b766388a"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.3/faz_0.5.3_darwin_amd64.tar.gz"
      sha256 "579ecfa0616ead37f7c490d4752be5028493f05158ca5b2dfbf139c16287fd5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.3/faz_0.5.3_linux_arm64.tar.gz"
      sha256 "1d07a8143ba3659dbbb6391be11e19dbd02688b0cc7056907a2039e1d62c06ac"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.5.3/faz_0.5.3_linux_amd64.tar.gz"
      sha256 "0687e29ab74a7fb9d3a06fa761d85b05de529b15c4319a6a80ae8a3c1461982a"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
