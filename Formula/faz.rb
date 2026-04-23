class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.4.0/faz_0.4.0_darwin_arm64.tar.gz"
      sha256 "5421a135b02df785c99a521e4da096842dd710f05bb1f0e978788b0bb9f19a2e"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.4.0/faz_0.4.0_darwin_amd64.tar.gz"
      sha256 "9d09b466322556e744e3bcb685e7bfc20ac23e8edc6cb18d72357b588e1c8116"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.4.0/faz_0.4.0_linux_arm64.tar.gz"
      sha256 "fc66d11f44842c268bc25c4b700fe2db863252927f624b6bf88caf54085778e0"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.4.0/faz_0.4.0_linux_amd64.tar.gz"
      sha256 "1e8e0c988188fe2be56c0c7a296f39a7ed5edf47e2dfce28755ea74909ef86a3"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
