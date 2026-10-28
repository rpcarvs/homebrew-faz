class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.12.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.4/faz_0.12.4_darwin_arm64.tar.gz"
      sha256 "20574d002e43753b4fa61147ef72c017c3f1f0e3009ead2980a4bc28dde26417"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.4/faz_0.12.4_darwin_amd64.tar.gz"
      sha256 "fc0ea486269573d69de153058b67d018a1b0e0b36b8fd476317150fe2c427d6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.4/faz_0.12.4_linux_arm64.tar.gz"
      sha256 "9327dec55dec6994dae63826a02f53b8851b39faa908f6bfe4522f76dc758016"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.4/faz_0.12.4_linux_amd64.tar.gz"
      sha256 "a6f345884659d9162e00fd73553c13df8be5041f72ed2b48bb9427090df63f66"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
