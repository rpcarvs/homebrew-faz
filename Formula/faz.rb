class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.13.0/faz_0.13.0_darwin_arm64.tar.gz"
      sha256 "35f513f7fcd3b5a05de0edefd301112a955270ab0402f2241621beb6aa3698e6"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.13.0/faz_0.13.0_darwin_amd64.tar.gz"
      sha256 "ffa2415adf673357be095c137a156fb9f2b9fa4d0d3cbdb4ba7198e81a7524de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.13.0/faz_0.13.0_linux_arm64.tar.gz"
      sha256 "ca518bf3bf5db1a439c8838f5f3339dd301a7049e4f8c24688359163b40617dc"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.13.0/faz_0.13.0_linux_amd64.tar.gz"
      sha256 "6eafc0431938b1650f71f379fe88fe3d84a14f25fc4194ad47971696e19cc757"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
